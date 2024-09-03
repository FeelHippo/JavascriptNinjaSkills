import 'example_inherited_widget_usage.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExampleInheritedWidget(
        text: 'Hello',
        child: Builder(
          builder: (BuildContext innerContext) {
            return Text(
              ExampleInheritedWidget.of(innerContext).text,
            );
          },
        ),
      ),
    );
  }
}