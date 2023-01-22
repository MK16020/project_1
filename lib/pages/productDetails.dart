import 'package:flutter/material.dart';
import 'package:project_demo/models/products.dart';

import '../components/appbarComponent.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(),
    );
  }
}
