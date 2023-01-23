import 'package:flutter/material.dart';

import '../components/appbarComponent.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Center(
          child: Column(children: [
            Form(
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('images/image10.jpg'),
                  ),
                  TextFormField(
                    enableInteractiveSelection: false,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                  const SizedBox(height: 50),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    obscureText: true,
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    child: const Text('Change Email'),
                    onPressed: () {
                      // Handle form submission
                    },
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
