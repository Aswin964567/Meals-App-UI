import 'package:flutter/material.dart';
import 'package:meals_app/model/appbar.dart';
import 'package:meals_app/model/item_box.dart';

class Appetizer extends StatelessWidget {
  final List<String> items = [
    "Hot & Sour Chicken",
    "Creamy Chicken",
    "Hot & Sour Chicken",
    "Hot & Sour Chicken",
    "Hot & Sour Chicken",
  ];
  Appetizer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Appetizers",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   height: 15,
          // ),
          Expanded(
            child: ListView(
              children: items
                  .map(
                    (item) => ItemBox(
                      title: item,
                      cHeight: 80,
                      hasButton: false,
                      imageHeight: 68,
                      imageWidth: 81,
                    ),
                  )
                  .toList(),
            ),
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
