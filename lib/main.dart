import 'package:flutter/material.dart';

import 'features/home/presentation/view/home_screen.dart';

void main() {
  runApp(const SephaApp());
}
class SephaApp extends StatelessWidget {
  const SephaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

