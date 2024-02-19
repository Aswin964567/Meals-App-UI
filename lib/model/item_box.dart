import 'package:flutter/material.dart';
import 'package:meals_app/item_detail.dart';
import 'package:meals_app/model/adding_button.dart';

class ItemBox extends StatelessWidget {
  final String title;
  const ItemBox({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemDetail()),
            );
          },
          child: Container(
            height: 80,
            width: 340,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Qty",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Container(
                              decoration: const BoxDecoration(
                                color: Color(0xffd9d9d9),
                              ),
                              child: const AddingButton()),
                        ],
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/menu.png',
                  width: 81,
                  height: 68,
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
    //   ),
    // );
  }
}
