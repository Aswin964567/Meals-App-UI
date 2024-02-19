import 'package:flutter/material.dart';
import 'package:meals_app/model/appbar.dart';
import 'package:meals_app/model/category_list.dart';
import 'package:meals_app/model/menu_item.dart';

class CategoryScreen extends StatelessWidget {
  final List<MenuItems> menuItems;
  const CategoryScreen({super.key, required this.menuItems});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(),
      body:  Column(
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
