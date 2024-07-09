import 'package:books_test_app/Features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:books_test_app/constants.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: const SplashViewBody(),
      

    );
  }
}
