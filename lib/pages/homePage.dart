import 'package:flutter/material.dart';
import '../components/appbarComponent.dart';
import '../components/item_card.dart';
import '../models/products.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
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
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: ItemCard(product: products[index], index: index),
              ),
            ),
          ))
        ]));
  }
}
