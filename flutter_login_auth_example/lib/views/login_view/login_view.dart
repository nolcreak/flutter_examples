import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './widgets/build_fab_btn.dart';
import './widgets/build_login_view.dart';

import '../../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyFabBtn(controller: controller),
      appBar: AppBar(
        title: Text('Login View'),
      ),
      body: BuildLoginView(controller: controller),
    );
  }
}
