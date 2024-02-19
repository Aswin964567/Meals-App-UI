import 'package:flutter/material.dart';
import 'package:meals_app/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF827500),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 15),
          ),
          Image.asset(
            'assets/logo.gif',
            width: 138,
            height: 149,
          ),
          const Text(
            'JustEat',
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 50,
                fontWeight: FontWeight.w900,
                color: Colors.white),
          ),
          const SizedBox(
            height: 280,
          ),
          Container(
            width: 320,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xffd9d9d9),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: const Text(
                "Click here to CONTINUE.!",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const Text(
            "Powered by",
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Image.asset(
            'assets/imiotfinal.png',
            width: 115,
            height: 64,
          ),
        ],
      ),
    );
  }
}
