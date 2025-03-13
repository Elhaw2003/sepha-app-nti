import 'package:flutter/material.dart';
class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset("assets/images/sepha_image.jpg"),
          ),
        ],
      ),
    );
  }
}
