import 'package:flutter/material.dart';
import 'package:meals_app/model/container.dart';
import 'package:meals_app/profile.dart';
import 'package:meals_app/search.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF827500),
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/shoping.png',
          ),
        ),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Select a Outlet Near You..!",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 330,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
                controller: _textController,
                onSubmitted: (text) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchLocation(),
                    ),
                  );
                },
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                    hintText: "Search for your location !",
                    alignLabelWithHint: true,
                    // fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContainerBox(
                      text: 'Kannur',
                    ),
                    ContainerBox(
                      text: 'Thalassery',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContainerBox(
                      text: 'Payyannur',
                    ),
                    ContainerBox(
                      text: 'Thaliparamba',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContainerBox(
                      text: 'Koothuparamba',
                    ),
                    ContainerBox(
                      text: 'Eranholi',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  width: 230,
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nothing near You ?",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text("Find Our Collaborative Outlets",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
