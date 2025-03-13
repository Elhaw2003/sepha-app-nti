import 'package:flutter/material.dart';
import 'package:sepha_app_nti/features/home/presentation/view/home_screen.dart';
import 'package:sepha_app_nti/features/splash/view/widgets/splash_body.dart';

import '../../../core/utilities/app_colors.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (c){
          return const HomeScreen();
        }));
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: AppColors.white,
      body: SplashBody(),
    );
  }
}
