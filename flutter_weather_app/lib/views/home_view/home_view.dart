import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import './widgets/allow_button.dart';
import './widgets/bottom_sheet_body.dart';
import './widgets/search_button.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WeatherApp'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AllowButton(
              controller: controller,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('or'),
            ),
            SearchButton(
              bottomSheetBody: BottomSheetBody(
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
