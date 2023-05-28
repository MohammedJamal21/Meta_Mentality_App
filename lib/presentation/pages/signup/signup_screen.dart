import 'package:flutter/material.dart';

import '../../../widgets/buttons/meta_button.dart';
import '../../../widgets/textfields/meta_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Welcome back! Enter your details to create an account',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const MetaTextField(
                labelText: 'Email Address',
              ),
              const SizedBox(
                height: 10,
              ),
              const MetaTextField(
                labelText: 'Password',
              ),
              const SizedBox(
                height: 10,
              ),
              MetaButton(
                data: 'Continue',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
