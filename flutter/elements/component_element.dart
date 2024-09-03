import '../widgets/widget.dart';
import 'element.dart';

/// An [Element] that composes other [Element]s.
///
/// Rather than creating a [RenderObject] directly, a [ComponentElement] creates
/// [RenderObject]s indirectly by creating other [Element]s.
///
/// Contrast with [RenderObjectElement].
abstract class ComponentElement extends Element {
  /// Creates an element that uses the given widget as its configuration.
  ComponentElement(super.widget);

  Element? _child;

  bool _debugDoingBuild = false;
  
  bool get debugDoingBuild => _debugDoingBuild;

  Element? get renderObjectAttachingChild => _child;

  void mount(Element? parent, Object? newSlot) {
    assert(_child == null);
    _firstBuild();
    assert(_child != null);
  }

  void _firstBuild() {
    // StatefulElement overrides this to also call state.didChangeDependencies.
    rebuild(); // This eventually calls performRebuild.
  }

  /// Calls the [StatelessWidget.build] method of the [StatelessWidget] object
  /// (for stateless widgets) or the [State.build] method of the [State] object
  /// (for stateful widgets) and then updates the widget tree.
  ///
  /// Called automatically during [mount] to generate the first build, and by
  /// [rebuild] when the element needs updating.
  @override
  @pragma('vm:notify-debugger-on-exception')
  void performRebuild() {
    // We delay marking the element as clean until after calling build() so
    // that attempts to markNeedsBuild() during build() will be ignored.
    super.performRebuild(); // clears the "dirty" flag
  }

  /// Subclasses should override this function to actually call the appropriate
  /// `build` function (e.g., [StatelessWidget.build] or [State.build]) for
  /// their widget.
  Widget build();
}