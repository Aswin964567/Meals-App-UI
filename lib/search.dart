import 'package:flutter/material.dart';
import 'package:meals_app/home.dart';
import 'package:meals_app/model/appbar.dart';

class SearchLocation extends StatelessWidget {
  const SearchLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 280),
              Column(
                children: [
                  const Text(
                    "Sorry..!",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "This Option is Not Available for Now",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  HomeScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Main Menu",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
