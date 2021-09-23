import 'package:flutter/material.dart';

import '../../../models/login_model.dart';
import '../../../controllers/login_controller.dart';
import '../../../services/api_service/user_service.dart';

class MyFabBtn extends StatelessWidget {
  final LoginController controller;
  final UserService _userService = UserService();

  MyFabBtn({required this.controller});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final email = _userService.defaultEmail;
        final password = _userService.defaultPassword;

        controller.emailController.text = email;
        controller.passwordController.text = password;

        controller.login(LoginModel(email: email, password: password));
      },
      child: Icon(Icons.login),
    );
  }
}
