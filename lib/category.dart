import 'package:flutter/material.dart';
import 'package:meals_app/model/category_list.dart';
import 'package:meals_app/model/menu_item.dart';

class CategoryScreen extends StatelessWidget {
  final List<MenuItems> menuItems;
  const CategoryScreen({super.key, required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF827500),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 12,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundImage: AssetImage('assets/ellipse.gif'),
              ),
            ),
          )
        ],
      ),
      body: const Column(
        children: [
           Padding(
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
           SizedBox(
            height: 15,
          ),
          CategoryList()
        ],
      ),
    );
    //     ],
    //   ),
    // );
  }
}
