import 'package:flutter/material.dart';
import 'package:meals_app/model/appbar.dart';
import 'package:meals_app/model/item_box.dart';
import 'package:meals_app/payment.dart';

class MyCart extends StatelessWidget {
  final List<String> items = [
    "Lollipop Chicken",
    "Alfaham Full Chicken",
    "Biriyani Chicken",
    "Biriyani Beef",
    "Hot & Sour Chicken",
  ];
  MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
      ),
      body: ListView(
        children: [
          ...items
              .map(
                (item) => ItemBox(
                  title: item,
                  cHeight: 120,
                  hasButton: true,
                  imageHeight: 100,
                  imageWidth: 100,
                  rightPadding: 10,
                ),
              )
              .toList(),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Payment()),
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
                    "CONTINUE to PAYMENT",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
