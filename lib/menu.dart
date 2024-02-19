import 'package:flutter/material.dart';
import 'package:meals_app/model/appbar.dart';
import 'package:meals_app/model/menu_container.dart';


class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CommonAppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Select a Menu Category",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuContainer(text: 'Non-Veg'),
              MenuContainer(text: 'Veg'),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuContainer(text: 'Mixed'),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 320,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Customize Menu",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
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
