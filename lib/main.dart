import 'package:flutter/material.dart';
import 'features/splash/view/splash_screen.dart';

void main() {
  runApp(const SephaApp());
}
class SephaApp extends StatelessWidget {
  const SephaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

