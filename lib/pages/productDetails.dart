import 'package:flutter/material.dart';
import 'package:project_demo/models/products.dart';

import '../components/appbarComponent.dart';
import '../components/item_card.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key, required this.product, required this.index}) : super(key: key);
  final Product product;
  final int index;

  get itemBuilder => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Container(
          alignment: Alignment.topCenter,
          // color: Colors.amber,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,

            // mainAxisSize: MainAxisSize.min,
            children: [
              ItemCard(product: product, index: index),
              SizedBox(width: 250, child: Text(product.description)),
            ],
          ),
        ));
  }
}
/*
title: "Newport Short // Marigold Broderie",
    price: 1200,
    brand: "CAITLIN CRISP",
    size: 12,
    description: dummyText,
*/
