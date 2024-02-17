import 'package:flutter/material.dart';
import 'package:meals_app/menu.dart';

class ContainerBox extends StatelessWidget {
  const ContainerBox({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5, // Set the elevation to give it a button-like appearance
      borderRadius: BorderRadius.circular(10),
      child: InkResponse(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MenuItems(),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/city1.png',
                fit: BoxFit.contain,
              ),
              SizedBox(height: 5),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none),
              ),
            ],
          ),
        ),
      ),
    );
    // );
  }
}
