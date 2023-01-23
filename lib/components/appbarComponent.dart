import 'package:flutter/material.dart';
import 'package:project_demo/pages/homePage.dart';
import 'package:project_demo/pages/profilePage.dart';

import '../pages/cartPage.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 60,
    backgroundColor: const Color(0xffcaafa8),
    // elevation: 0,
    leading: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
        // Handle the button press here
      },
      child: Image.asset('images/Logo.png'),
    ),
    actions: <Widget>[
      IconButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage())),
          icon: const Icon(Icons.person, color: Colors.white)),
      IconButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage())),
          icon: const Icon(
            Icons.shopping_bag,
            color: Colors.white,
          ))
    ],
  );
}
