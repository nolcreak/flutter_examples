import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as _dotenv;

import './services/pref.dart';
import './routers/app_views.dart';

void main() async {
  await _dotenv.load(fileName: '.env');
  await Get.putAsync(() => SharedPrefService().init());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      getPages: AppView.getPages,
    );
  }
}
