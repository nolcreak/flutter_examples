import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';
import '../routes/app_views.dart';

import './services/api_service/shared_prefs_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync(() => SharedPrefsService().init());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.INITIAL_VIEW,
      getPages: AppViews.appViews,
      title: 'Login Auth Example',
    );
  }
}
