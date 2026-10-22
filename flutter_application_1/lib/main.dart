import 'package:flutter/material.dart';

void main() {
  runApp(const FlowerMenuApp());
}

class FlowerMenuApp extends StatelessWidget {
  const FlowerMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flower Shop Menu'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .stretch, // Makes all cards stretch to equal width
            children: [
              MenuCard('flower_1.jpg', 'Rose'),
              MenuCard('flower_2.jpg', 'Peony'),
              MenuCard('flower_3.jpg', 'Carnation'),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard(this.file, this.name, {super.key});

  final String file;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(255, 252, 161, 191),
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset('assets/images/$file', width: 80, height: 80),
            const SizedBox(width: 20),
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
