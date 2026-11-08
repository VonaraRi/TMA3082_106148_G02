import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/screens/order_summary.dart';

void main() {
  testWidgets('summary shows the total', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: OrderSummaryScreen()));

    expect(find.text('Rose Flower'), findsOneWidget);
    expect(find.text('Quantity: 2'), findsOneWidget);
    expect(find.text('Total: RM 25.00'), findsOneWidget);
  });
}
