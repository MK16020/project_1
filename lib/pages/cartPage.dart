import 'package:flutter/material.dart';
import 'package:project_demo/models/products.dart';

import '../components/appbarComponent.dart';
import 'payPage.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        backgroundColor: const Color(0xfffdf9f5),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    SizedBox(
                      height: 200,
                      child: Image.asset('assets/images/image5.webp'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[5].title,
                          style: const TextStyle(color: Colors.black),
                        ),
                        Text(
                          products[5].brand,
                          style: const TextStyle(color: Colors.black),
                        ),
                        Text(
                          '\$ ' + products[5].price.toString(),
                          style: const TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 300,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const TextField(
                    decoration:
                        InputDecoration(labelText: 'Order note', focusColor: Colors.black, hoverColor: Colors.black),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Subtotal',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '\$ ' + products[5].price.toString(),
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PayPage(),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color(0xffcaafa8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'submit',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
