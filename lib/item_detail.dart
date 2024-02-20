import 'package:flutter/material.dart';
import 'package:meals_app/category.dart';
import 'package:meals_app/model/adding_button.dart';
import 'package:meals_app/model/appbar.dart';
import 'package:meals_app/model/menu_item.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 30,
                ),
                Image.asset("assets/dish1.png"),
                const SizedBox(
                  width: 30,
                ),
                Image.asset("assets/dish2.png"),
                const SizedBox(
                  width: 30,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/dish3.png",
                    height: 140,
                    width: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 35,
              ),
              Text(
                "Hot & Sour Chicken Soup",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Text(
                      "Chinese Cusine",
                      style: TextStyle(
                        color: Color(0xFF820046),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "100% Non-Veg",
                      style: TextStyle(
                        color: Color(0xFF820046),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/nonveg.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 35,
              ),
              Text(
                "Description",
                style: TextStyle(
                  color: Color(0xFF645A02),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 35),
            child: Text(
              // textAlign: TextAlign.justify,
              'Hot and Sour Chicken Soup: A fiery blend of tender chicken, mushrooms, bamboo shoots, carrots, and bell peppers in a rich broth. With a tantalizing mix of soy sauce, rice vinegar, and chili paste, this soup delivers a perfect balance of heat and tang. A deliciously satisfying culinary adventure in every spoonful.',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              SizedBox(
                width: 35,
              ),
              Text(
                "Add this Item",
                style: TextStyle(
                  color: Color(0xFF820046),
                  fontStyle: FontStyle.italic,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 25,
              ),
              AddingButton(
                buttonColor: Color.fromARGB(255, 255, 255, 255),
                containerColor: Color(0xFF645A02),
              )
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryScreen(
                            menuItems: menuItems,
                          ),),);
            },
            child: Container(
                width: 256,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff817400),
                ),
                child: const Center(
                  child: Text("Add More Dishes",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      )),
                )),
          )
        ],
      ),
    );
  }
}
