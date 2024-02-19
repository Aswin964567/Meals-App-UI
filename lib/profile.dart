import 'package:flutter/material.dart';
import 'package:meals_app/model/appbar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(),
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 20),
        child: Text("My Profile",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}
