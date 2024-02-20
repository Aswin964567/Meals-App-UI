import 'package:flutter/material.dart';
import 'package:meals_app/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFD9D9D9),
      ),
      home: const SplashScreen(),
    ),
  );
}
