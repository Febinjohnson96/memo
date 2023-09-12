import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:memo/config/app_color.dart';
import 'package:memo/utils/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: frenchViolet,
            borderRadius: BorderRadius.circular(100)
          ),
          child: Center(
            child: Text("$appName.",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
            ).animate().fadeIn().scale(delay: 1200.ms),
          ),
        ),
      ),
    );
  }
}