import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/rose.dart';

void main() {
  testWidgets('menu lists the three items', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    expect(find.text('Android ATC Flower Shop'), findsOneWidget);
    expect(find.text('Rose Flower'), findsOneWidget);
    expect(find.text('Peony Flower'), findsOneWidget);
    expect(find.text('Carnation Flower'), findsOneWidget);
  });
  testWidgets('tapping a card opens its screen', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());

    await tester.tap(find.text('Rose Flower'));
    await tester.pumpAndSettle();

    expect(find.byType(RoseFlowerScreen), findsOneWidget);
  });

  testWidgets('back button returns to the menu', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab04());
    await tester.tap(find.text('Peony Flower'));
    await tester.pumpAndSettle();

    await tester.pageBack();
    await tester.pumpAndSettle();

    expect(find.text('Android ATC Flower Shop'), findsOneWidget);
  });
}
