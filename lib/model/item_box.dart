import 'package:flutter/material.dart';

class ItemBox extends StatelessWidget {
  const ItemBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          width: 340,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                child: Text(
                  'text',
                  style: TextStyle(
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
                  'assets/menu.png',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
