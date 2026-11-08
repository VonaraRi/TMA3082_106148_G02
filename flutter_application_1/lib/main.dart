import 'package:flutter/material.dart';

import 'screens/carnation.dart';
import 'screens/menu.dart';
import 'screens/rose.dart';
import 'screens/peony.dart';

void main() => runApp(const Lab04());

class Lab04 extends StatelessWidget {
  const Lab04({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MenuScreen(),
      routes: {
        'menu': (context) => const MenuScreen(),
        'rose': (context) => const RoseFlowerScreen(),
        'peony': (context) => const PeonyFlowerScreen(),
        'carnation': (context) => const CarnationFlowerScreen(),
      },
    );
  }
}
