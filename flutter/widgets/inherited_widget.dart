import '../elements/inherited_element.dart';
import 'proxy_widget.dart';
import 'widget.dart';


/// Base class for widgets that efficiently propagate information down the tree.
///
/// {@youtube 560 315 https://www.youtube.com/watch?v=og-vJqLzg2c}
///
/// To obtain the nearest instance of a particular type of inherited widget from
/// a build context, use [BuildContext.dependOnInheritedWidgetOfExactType].
///
/// Inherited widgets, when referenced in this way, will cause the consumer to
/// rebuild when the inherited widget itself changes state.
///
/// {@youtube 560 315 https://www.youtube.com/watch?v=Zbm3hjPjQMk}
///
/// {@tool snippet}
///
/// The following is a skeleton of an inherited widget called `FrogColor`:
///
/// ```dart
/// class FrogColor extends InheritedWidget {
///   const FrogColor({
///     super.key,
///     required this.color,
///     required super.child,
///   });
///
///   final Color color;
///
///   static FrogColor? maybeOf(BuildContext context) {
///     return context.dependOnInheritedWidgetOfExactType<FrogColor>();
///   }
///
///   static FrogColor of(BuildContext context) {
///     final FrogColor? result = maybeOf(context);
///     assert(result != null, 'No FrogColor found in context');
///     return result!;
///   }
///
///   @override
///   bool updateShouldNotify(FrogColor oldWidget) => color != oldWidget.color;
/// }
/// ```
/// {@end-tool}
///
/// ## Implementing the `of` and `maybeOf` methods
///
/// The convention is to provide two static methods, `of` and `maybeOf`, on the
/// [InheritedWidget] which call
/// [BuildContext.dependOnInheritedWidgetOfExactType]. This allows the class to
/// define its own fallback logic in case there isn't a widget in scope.
///
/// The `of` method typically returns a non-nullable instance and asserts if the
/// [InheritedWidget] isn't found, and the `maybeOf` method returns a nullable
/// instance, and returns null if the [InheritedWidget] isn't found. The `of`
/// method is typically implemented by calling `maybeOf` internally.
///
/// Sometimes, the `of` and `maybeOf` methods return some data rather than the
/// inherited widget itself; for example, in this case it could have returned a
/// [Color] instead of the `FrogColor` widget.
///
/// Occasionally, the inherited widget is an implementation detail of another
/// class, and is therefore private. The `of` and `maybeOf` methods in that case
/// are typically implemented on the public class instead. For example, [Theme]
/// is implemented as a [StatelessWidget] that builds a private inherited
/// widget; [Theme.of] looks for that private inherited widget using
/// [BuildContext.dependOnInheritedWidgetOfExactType] and then returns the
/// [ThemeData] inside it.
///
/// ## Calling the `of` or `maybeOf` methods
///
/// When using the `of` or `maybeOf` methods, the `context` must be a descendant
/// of the [InheritedWidget], meaning it must be "below" the [InheritedWidget]
/// in the tree.
///
/// {@tool snippet}
///
/// In this example, the `context` used is the one from the [Builder], which is
/// a child of the `FrogColor` widget, so this works.
///
/// ```dart
/// // continuing from previous example...
/// class MyPage extends StatelessWidget {
///   const MyPage({super.key});
///
///   @override
///   Widget build(BuildContext context) {
///     return Scaffold(
///       body: FrogColor(
///         color: Colors.green,
///         child: Builder(
///           builder: (BuildContext innerContext) {
///             return Text(
///               'Hello Frog',
///               style: TextStyle(color: FrogColor.of(innerContext).color),
///             );
///           },
///         ),
///       ),
///     );
///   }
/// }
/// ```
/// {@end-tool}
///
/// {@tool snippet}
///
/// In this example, the `context` used is the one from the `MyOtherPage`
/// widget, which is a parent of the `FrogColor` widget, so this does not work,
/// and will assert when `FrogColor.of` is called.
///
/// ```dart
/// // continuing from previous example...
///
/// class MyOtherPage extends StatelessWidget {
///   const MyOtherPage({super.key});
///
///   @override
///   Widget build(BuildContext context) {
///     return Scaffold(
///       body: FrogColor(
///         color: Colors.green,
///         child: Text(
///           'Hello Frog',
///           style: TextStyle(color: FrogColor.of(context).color),
///         ),
///       ),
///     );
///   }
/// }
/// * [StatefulWidget] and [State], for widgets that can build differently
///   several times over their lifetime.
/// * [StatelessWidget], for widgets that always build the same way given a
///   particular configuration and ambient state.
/// * [Widget], for an overview of widgets in general.
abstract class InheritedWidget extends ProxyWidget {
  /// Abstract const constructor. This constructor enables subclasses to provide
  /// const constructors so that they can be used in const expressions.
  InheritedWidget({ super.key, required super.child });

  InheritedElement createElement() => InheritedElement(this);

  /// Whether the framework should notify widgets that inherit from this widget.
  ///
  /// When this widget is rebuilt, sometimes we need to rebuild the widgets that
  /// inherit from this widget but sometimes we do not. For example, if the data
  /// held by this widget is the same as the data held by `oldWidget`, then we
  /// do not need to rebuild the widgets that inherited the data held by
  /// `oldWidget`.
  ///
  /// The framework distinguishes these cases by calling this function with the
  /// widget that previously occupied this location in the tree as an argument.
  /// The given widget is guaranteed to have the same [runtimeType] as this
  /// object.
  bool updateShouldNotify(covariant InheritedWidget oldWidget);
}