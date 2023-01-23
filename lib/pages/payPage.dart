import 'package:flutter/material.dart';

import '../components/appbarComponent.dart';

class PayPage extends StatelessWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        color: Color.fromARGB(255, 255, 236, 236),
        padding: const EdgeInsets.all(32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              // mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('Hebe Designer Boutique',
                    style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
                const Text('Cart > Information > Shipping > Payment', style: TextStyle(color: Colors.black)),
                const PaymentMethods(),
                const Text('data'),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black45,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          width: 120,
          height: 40,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Image.asset('images/shop_logo.png'),
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          padding: const EdgeInsets.all(4),
          width: 120,
          height: 40,
          decoration: BoxDecoration(color: const Color(0xffffc439), borderRadius: BorderRadius.circular(8)),
          child: Image.asset('images/paypal_logo.png'),
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          padding: const EdgeInsets.all(4),
          width: 120,
          height: 40,
          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
          child: Image.asset('images/Google_Pay_Logo.png'),
        ),
        const SizedBox(
          width: 16,
        ),
      ],
    );
  }
}
