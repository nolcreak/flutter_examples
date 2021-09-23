import 'package:flutter/material.dart';

import './build_login_form.dart';
import './build_login_info.dart';

class BuildLoginView extends StatelessWidget {
  final controller;

  BuildLoginView({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          BuildLoginInfo(),
          BuildLoginForm(controller: controller),
        ],
      ),
    );
  }
}
