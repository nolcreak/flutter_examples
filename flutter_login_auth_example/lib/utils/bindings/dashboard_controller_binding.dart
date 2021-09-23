import 'package:get/get.dart';

import '../../controllers/dashboard_controller.dart';

class DashboardControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
  }
}
