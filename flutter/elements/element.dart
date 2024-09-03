import 'dart:collection';

import '../widgets/inherited_widget.dart';
import '../widgets/widget.dart';
import 'build_context.dart';
import 'inherited_element.dart';

abstract class Element implements BuildContext {
  /// Creates an element that uses the given widget as its configuration.
  ///
  /// Typically called by an override of [Widget.createElement].
  Element(Widget widget);

  Element get parent => _parent!; 
  Element? _parent;

  /// Compare two widgets for equality.
  ///
  /// When a widget is rebuilt with another that compares equal according
  /// to `operator ==`, it is assumed that the update is redundant and the
  /// work to update that branch of the tree is skipped.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes, hash_and_equals
  bool operator ==(Object other) => identical(this, other);

  /// The configuration for this element.
  ///
  /// Avoid overriding this field on [Element] subtypes to provide a more
  /// specific widget type (i.e. [StatelessElement] and [StatelessWidget]).
  /// Instead, cast at any call sites where the more specific type is required.
  /// This avoids significant cast overhead on the getter which is accessed
  /// throughout the framework internals during the build phase - and for which
  /// the more specific type information is not used.
  @override
  Widget get widget => _widget!;
  Widget? _widget;

  @override
  bool get mounted => _widget != null;

  Set<InheritedElement> get dependencies => _dependencies!;
  Set<InheritedElement>? _dependencies;
  Map<Type, InheritedElement>? _inheritedElements;
  
  InheritedWidget dependOnInheritedElement(InheritedElement ancestor, { Object? aspect }) {
    _dependencies ??= HashSet<InheritedElement>();
    _dependencies!.add(ancestor);
    ancestor.updateDependencies(this, aspect);
    return ancestor.widget;
  }

  @override
  T? dependOnInheritedWidgetOfExactType<T extends InheritedWidget>({Object? aspect}) {
    final InheritedElement? ancestor = _inheritedElements == null ? null : _inheritedElements![T];
    if (ancestor != null) {
      return dependOnInheritedElement(ancestor, aspect: aspect) as T;
    }
    return null;
  }

  T? getInheritedWidgetOfExactType<T extends InheritedWidget>() {
    return getElementForInheritedWidgetOfExactType<T>()?.widget as T?;
  }

  InheritedElement? getElementForInheritedWidgetOfExactType<T extends InheritedWidget>() {
    final InheritedElement? ancestor = _inheritedElements == null ? null : _inheritedElements![T];
    return ancestor;
  }

  /// Called when a dependency of this element changes.
  ///
  /// The [dependOnInheritedWidgetOfExactType] registers this element as depending on
  /// inherited information of the given type. When the information of that type
  /// changes at this location in the tree (e.g., because the [InheritedElement]
  /// updated to a new [InheritedWidget] and
  /// [InheritedWidget.updateShouldNotify] returned true), the framework calls
  /// this function to notify this element of the change.
  void didChangeDependencies() {
    markNeedsBuild();
  }

  /// Returns true if the element has been marked as needing rebuilding.
  ///
  /// The flag is true when the element is first created and after
  /// [markNeedsBuild] has been called. The flag is reset to false in the
  /// [performRebuild] implementation.
  bool get dirty => _dirty;
  bool _dirty = true;

  // Whether this is in _buildScope._dirtyElements. This is used to know whether
  // we should be adding the element back into the list when it's reactivated.
  bool _inDirtyList = false;

  // Whether we've already built or not. Set in [rebuild].
  bool _debugBuiltOnce = false;
  
  /// The object that manages the lifecycle of this element.
  dynamic get owner => _owner;
  dynamic _owner;

  /// Marks the element as dirty and adds it to the global list of widgets to
  /// rebuild in the next frame.
  ///
  /// Since it is inefficient to build an element twice in one frame,
  /// applications and widgets should be structured so as to only mark
  /// widgets dirty during event handlers before the frame begins, not during
  /// the build itself.
  void markNeedsBuild() {
    if (dirty) {
      return;
    }
    _dirty = true;
    owner!.scheduleBuildFor(this);
  }

  /// Cause the widget to update itself. In debug builds, also verify various
  /// invariants.
  ///
  /// Called by the [BuildOwner] when [BuildOwner.scheduleBuildFor] has been
  /// called to mark this element dirty, by [mount] when the element is first
  /// built, and by [update] when the widget has changed.
  ///
  /// The method will only rebuild if [dirty] is true. To rebuild regardless
  /// of the [dirty] flag, set `force` to true. Forcing a rebuild is convenient
  /// from [update], during which [dirty] is false.
  ///
  /// ## When rebuilds happen
  ///
  /// ### Terminology
  ///
  /// [Widget]s represent the configuration of [Element]s. Each [Element] has a
  /// widget, specified in [Element.widget]. The term "widget" is often used
  /// when strictly speaking "element" would be more correct.
  ///
  /// While an [Element] has a current [Widget], over time, that widget may be
  /// replaced by others. For example, the element backing a [ColoredBox] may
  /// first have as its widget a [ColoredBox] whose [ColoredBox.color] is blue,
  /// then later be given a new [ColoredBox] whose color is green.
  ///
  /// At any particular time, multiple [Element]s in the same tree may have the
  /// same [Widget]. For example, the same [ColoredBox] with the green color may
  /// be used in multiple places in the widget tree at the same time, each being
  /// backed by a different [Element].
  ///
  /// ### Marking an element dirty
  ///
  /// An [Element] can be marked dirty between frames. This can happen for various
  /// reasons, including the following:
  ///
  /// * The [State] of a [StatefulWidget] can cause its [Element] to be marked
  ///   dirty by calling the [State.setState] method.
  ///
  /// * When an [InheritedWidget] changes, descendants that have previously
  ///   subscribed to it will be marked dirty.
  ///
  /// * During a hot reload, every element is marked dirty (using [Element.reassemble]).
  ///
  /// ### Rebuilding
  ///
  /// Dirty elements are rebuilt during the next frame. Precisely how this is
  /// done depends on the kind of element. A [StatelessElement] rebuilds by
  /// using its widget's [StatelessWidget.build] method. A [StatefulElement]
  /// rebuilds by using its widget's state's [State.build] method. A
  /// [RenderObjectElement] rebuilds by updating its [RenderObject].
  void rebuild({bool force = false}) {
    if ((!_dirty && !force)) {
      return;
    }
    Element? debugPreviousBuildTarget;
    assert(() {
      debugPreviousBuildTarget = owner!._debugCurrentBuildTarget;
      owner!._debugCurrentBuildTarget = this;
      return true;
    }());
    try {
      performRebuild();
    } finally {
      assert(() {
        owner!._debugElementWasRebuilt(this);
        assert(owner!._debugCurrentBuildTarget == this);
        owner!._debugCurrentBuildTarget = debugPreviousBuildTarget;
        return true;
      }());
    }
    assert(!_dirty);
  }

  /// Cause the widget to update itself.
  ///
  /// Called by [rebuild] after the appropriate checks have been made.
  void performRebuild() {
    _dirty = false;
  }
}