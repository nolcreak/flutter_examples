import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controllers/weather_detail_controller.dart';
import './widgets/custom_drawer.dart';
import './widgets/weather_summary.dart';

class WeatherDetailView extends GetView<WeatherDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        title: Text('Weather Details'),
      ),
      endDrawer: MyDrawer(controller: controller),
      body: Obx(
        () => controller.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : WeatherSummary(controller: controller),
      ),
    );
  }
}
