import 'package:flutter/material.dart';

class RoseFlowerScreen extends StatelessWidget {
  const RoseFlowerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 16, 3),
        title: const Text('Rose Flower'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/flower_1.jpg', width: 200),
            const Text(
              'Rose flower is a beautiful and elegant flower '
              'with a symbols of elegance.',
            ),
          ],
        ),
      ),
    );
  }
}
