import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'routes/app_views.dart';
import 'routes/app_routes.dart';
import 'constants/theme_constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      title: 'Clubhouse Clone',
      getPages: AppViews.appViews,
      initialRoute: AppRoutes.initialView,
    );
  }
}
