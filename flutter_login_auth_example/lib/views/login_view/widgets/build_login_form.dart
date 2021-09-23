import 'package:flutter/material.dart';

import '../../../models/login_model.dart';
import '../../../controllers/login_controller.dart';

class BuildLoginForm extends StatelessWidget {
  final LoginController controller;

  BuildLoginForm({required this.controller});

  final textFieldBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(6));

  @override
  Widget build(BuildContext context) {
    final emailController = controller.emailController;
    final passwordController = controller.passwordController;

    return Container(
      constraints: BoxConstraints(maxWidth: 450),
      child: Column(
        children: [
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'E-Mail',
              border: textFieldBorder,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              border: textFieldBorder,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              final loginModel = LoginModel(
                email: emailController.text,
                password: passwordController.text,
              );

              controller.login(loginModel);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Text('LOGIN'),
            ),
          ),
        ],
      ),
    );
  }
}
