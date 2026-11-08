import 'package:flutter/material.dart';

class PeonyFlowerScreen extends StatelessWidget {
  const PeonyFlowerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 161, 203),
        title: const Text('Peony Flower'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/flower_2.jpg', width: 200),
            const Text(
              'Peony flower is a delightful and cutesy flower '
              'with a symbols of purest.',
            ),
          ],
        ),
      ),
    );
  }
}
