import 'package:get/get.dart';

import '../../controllers/weather_detail_controller.dart';

class WeatherDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(WeatherDetailController());
  }
}
