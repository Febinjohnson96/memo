import 'package:flutter/material.dart';

class AppTheme {
  static final appTheme = ThemeData(
      fontFamily: 'Poppins',
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),
        displayMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 26,
        ),
        displaySmall: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
        headlineMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 22,
        ),
        headlineSmall: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 17,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 14,
        ),
        titleSmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        labelLarge: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                // color: buttonColor
              ),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                // color: buttonColor,
              ),
              borderRadius: BorderRadius.circular(12)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                // color: buttonColor
              ),
              borderRadius: BorderRadius.circular(12))));
}