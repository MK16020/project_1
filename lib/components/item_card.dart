import 'package:flutter/material.dart';

import '../constance.dart';
import '../models/products.dart';
import '../pages/productDetails.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final int index;
  const ItemCard({Key? key, required this.product, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              product: products[index],
            ),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            height: 352,
            width: 234,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(product.image), fit: BoxFit.fitWidth),
            ),
          ),
          Text(
            product.title,
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            product.brand,
            style: const TextStyle(fontSize: 16),
          ),
          Text(
            "\$ " + product.price.toString(),
            style: const TextStyle(fontSize: 16),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
            child: Text(product.size.toString()),
          ),
        ],
      ),
    );
  }
}
