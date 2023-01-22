import 'package:flutter/material.dart';

import '../pages/cartPage.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 60,
    backgroundColor: const Color(0xffcaafa8),
    // elevation: 0,
    leading: Image.asset('images/Logo.png'),
    actions: <Widget>[
      IconButton(onPressed: () {}, icon: const Icon(Icons.menu, color: Colors.white)),
      IconButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage())),
          icon: const Icon(
            Icons.shopping_bag,
            color: Colors.white,
          ))
    ],
  );
}
