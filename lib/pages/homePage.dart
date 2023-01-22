import 'package:flutter/material.dart';

import '../components/item_card.dart';
import '../models/products.dart';
import 'cartPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
        ),
        body: Column(children: [
          // Stack(
          //   alignment: Alignment.center,
          //   children: [
          //     Container(
          //       height: 500,
          //       width: double.infinity,
          //       decoration: const BoxDecoration(
          //         image: DecorationImage(image: AssetImage('images/image9.webp'), fit: BoxFit.cover),
          //       ),
          //     ),
          //     const Text(
          //       'Main Brand',
          //       textAlign: TextAlign.center,
          //       style: TextStyle(
          //         fontSize: 24.0,
          //       ),
          //     ),
          //   ],
          // ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
                itemCount: 8,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio: 0.50),
                itemBuilder: (context, index) => ItemCard(product: products[index], index: index)),
          ))
        ]));
  }
}
