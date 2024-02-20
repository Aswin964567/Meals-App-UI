import 'package:flutter/material.dart';
import 'package:meals_app/profile.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showButton;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  const CommonAppBar({super.key, this.showButton = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFF827500),
      leading: showButton
          ? IconButton(
              onPressed: () {
                // if(showButton)
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
            )
          : null,
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: 12,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
            icon: const CircleAvatar(
              backgroundImage: AssetImage('assets/ellipse.gif'),
            ),
          ),
        )
      ],
    );
  }
}
