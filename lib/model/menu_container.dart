import 'package:flutter/material.dart';
import 'package:meals_app/category.dart';
import 'package:meals_app/model/menu_item.dart';
// import 'package:meals_app/menu.dart';

class MenuContainer extends StatelessWidget {
  const MenuContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5, // Set the elevation to give it a button-like appearance
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryScreen(
                menuItems: menuItems,
              ),
            ),
          );
        },
        child: Container(
          height: 140,
          width: 145,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Center(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  'assets/menu.png',
                  fit: BoxFit.contain,
                ),
                // SizedBox(height: 5),
                Positioned(
                  bottom: 8,
                  child: Container(
                    width: 94,
                    height: 23,
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        text,
                        style: const TextStyle(
                            fontSize: 16,
                            // backgroundColor: Colors.white,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
