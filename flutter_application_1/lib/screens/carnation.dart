import 'package:flutter/material.dart';

class CarnationFlowerScreen extends StatelessWidget {
  const CarnationFlowerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 228, 237, 251),
        title: const Text('Carnation Flower'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/flower_3.jpg', width: 200),
            const Text(
              'Peony flower is a pretty and marvelous flower '
              'with a symbols of maturality.',
            ),
          ],
        ),
      ),
    );
  }
}
