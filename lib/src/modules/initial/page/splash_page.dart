import 'package:flutter/material.dart';
import 'package:fastlocation/src/shared/colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });

    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(
          'FastLocation',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
