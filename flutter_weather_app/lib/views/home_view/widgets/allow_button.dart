import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';
import '../../../routers/app_routers.dart';

class AllowButton extends StatelessWidget {
  final HomeController controller;

  const AllowButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: Text('Allow location'),
      icon: Icon(Icons.location_pin),
      onPressed: () async {
        final result = await controller.determinePosition();
        await Get.toNamed(AppRouters.WEATHER_DETAIL_VIEW, arguments: result);
      },
    );
  }
}
