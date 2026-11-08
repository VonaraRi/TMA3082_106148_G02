import 'package:flutter/material.dart';

import 'order.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key});

  static const String itemName = 'Rose Flower';
  static const double unitPrice = 12.50;
  static const int quantity = 2;

  @override
  Widget build(BuildContext context) {
    final total = orderTotal(unitPrice, quantity);

    return Scaffold(
      appBar: AppBar(title: const Text('Order Summary')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(itemName),
            const Text('Quantity: $quantity'),
            Text('Total: RM ${total.toStringAsFixed(2)}'),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
