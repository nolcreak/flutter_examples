import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_views.dart';

import './utils/bindings/user_binding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: UserBinding(),
      getPages: AppViews.appViews,
      title: 'Shopping Cart Example',
    );
  }
}
