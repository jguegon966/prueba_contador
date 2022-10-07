import 'package:flutter/material.dart';
import 'package:prueba_contador/screens/home_screen.dart';

import 'screens/home_screen copy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }

}
