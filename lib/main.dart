import 'package:flutter/material.dart';
import 'package:meals_app/item_detail.dart';
import 'package:meals_app/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: const Color(0xFFD9D9D9),
    ),
    home: const SplashScreen(),
  ));
}
