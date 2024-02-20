import 'package:flutter/material.dart';
import 'package:meals_app/item_detail.dart';
import 'package:meals_app/model/adding_button.dart';

class ItemBox extends StatelessWidget {
  final String title;
  final double cHeight;
  final bool hasButton;
  final double imageHeight;
  final double imageWidth;
  final double rightPadding;
  const ItemBox(
      {super.key,
      required this.title,
      required this.cHeight,
      required this.hasButton,
      required this.imageHeight,
      required this.imageWidth,
      this.rightPadding = 8});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemDetail()),
            );
            // navigateToScreen(context, ItemDetail());
          },
          child: Container(
            height: cHeight,
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
                      const Row(
                        children: [
                          Text(
                            "Qty",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          AddingButton(
                            buttonColor: Colors.black,
                            containerColor: Color(0xffd9d9d9),
                          ),
                        ],
                      ),
                      if (hasButton)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text('Remove Item'),
                            ),
                          ],
                        )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: rightPadding),
                  child: Image.asset(
                    'assets/menu.png',
                    // width: 81,
                    // height: 68,
                    width: imageWidth,
                    height: imageHeight,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
    //   ),
    // );
  }

  void navigateToScreen(BuildContext context, ItemDetail itemDetail) {}
}
