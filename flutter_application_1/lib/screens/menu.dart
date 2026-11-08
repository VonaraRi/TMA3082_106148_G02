import 'package:flutter/material.dart';

const TextStyle itemStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 169, 59),
        foregroundColor: Colors.white,
        title: const Text('Android ATC Flower Shop'),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'rose');
            },
            child: Card(
              color: const Color.fromARGB(255, 210, 16, 3),
              child: ListTile(
                leading: Image.asset('assets/images/flower_1.jpg', width: 40),
                title: const Text('Rose Flower', style: itemStyle),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'peony');
            },
            child: Card(
              color: const Color.fromARGB(255, 255, 161, 203),
              child: ListTile(
                leading: Image.asset('assets/images/flower_2.jpg', width: 40),
                title: const Text('Peony Flower', style: itemStyle),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'carnation');
            },
            child: Card(
              color: const Color.fromARGB(255, 228, 237, 251),
              child: ListTile(
                leading: Image.asset('assets/images/flower_3.jpg', width: 40),
                title: const Text('Carnation Flower', style: itemStyle),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
