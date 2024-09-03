import 'elements/build_context.dart';
import 'widgets/inherited_widget.dart';

class ExampleInheritedWidget extends InheritedWidget {
  ExampleInheritedWidget({
    super.key,
    required super.child,
    required this.text,
  });

  final String text;

  static ExampleInheritedWidget? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ExampleInheritedWidget>();
  }

  static ExampleInheritedWidget? of(BuildContext context) {
    final ExampleInheritedWidget? result = maybeOf(context);
    assert(result != null, 'No Widget found in context!');
    return result!;
  }

  @override
  bool updateShouldNotify(ExampleInheritedWidget oldWidget) => text != oldWidget.text;

}
