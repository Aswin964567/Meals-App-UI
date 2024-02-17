import 'package:flutter/material.dart';
import 'package:meals_app/model/menu_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                        child: Text(
                          menuItems[index].title,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(
                          width: 50,
                          height: 40,
                          // 'assets/menu.png',
                          menuItems[index].imagePath,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          );
        },
      ),
    );
  }
}
