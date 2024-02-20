import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meals_app/home.dart';
import 'package:meals_app/model/appbar.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int seconds = 5;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    // Start the timer for 5 seconds
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          // Redirect to the home screen after 5 seconds
          timer.cancel();
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => HomeScreen()),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        showButton: false,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                "Select a Method of Payment",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 250,
          ),
          Center(
            child: Column(
              children: [
                const Text(
                  "Success !",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  "Payment Successfully Completed",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Column(
                  children: [
                    const Text(
                      "You will be Redirected to Main Menu",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "in $seconds Seconds",
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      "or",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Payment()),
                        );
                      },
                      child: Center(
                        child: Container(
                          width: 260,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff817400),
                          ),
                          child: const Center(
                            child: Text(
                              "CONTINUE to HOME",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
