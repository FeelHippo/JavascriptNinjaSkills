import '../widgets/inherited_widget.dart';
import '../widgets/widget.dart';

abstract class BuildContext {
  /// The current configuration of the [Element] that is this [BuildContext].
  Widget get widget;

  /// Whether the [Widget] this context is associated with is currently
  /// mounted in the widget tree.
  bool get mounted;

  /// Returns the nearest widget of the given type `T` and creates a dependency
  /// on it, or null if no appropriate widget is found.
  ///
  /// The widget found will be a concrete [InheritedWidget] subclass, and
  /// calling [dependOnInheritedWidgetOfExactType] registers this build context
  /// with the returned widget. When that widget changes (or a new widget of
  /// that type is introduced, or the widget goes away), this build context is
  /// rebuilt so that it can obtain new values from that widget.
  T? dependOnInheritedWidgetOfExactType<T extends InheritedWidget>({ Object? aspect });
}