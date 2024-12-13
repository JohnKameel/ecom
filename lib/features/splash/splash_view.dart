import 'package:advancedee/core/widgets/constants.dart';
import 'package:advancedee/features/splash/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SplashBody(),
    );
  }
}
