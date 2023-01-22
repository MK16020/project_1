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
                    child: const Text('Login'),
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
