import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/dashboard_controller.dart';
import '../../views/dashboard_view/widgets/build_dashboard_view.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard View'),
      ),
      body: BuildDashboardView(controller: controller),
    );
  }
}
