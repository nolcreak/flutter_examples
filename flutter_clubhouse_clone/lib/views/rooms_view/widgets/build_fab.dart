import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/color_constants.dart';

class BuildFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: ColorConstants.greenColor,
        shape: const StadiumBorder(),
        padding: EdgeInsets.symmetric(
          vertical: GetPlatform.isWeb ? 20 : 10,
          horizontal: 15,
        ),
      ),
      onPressed: () {},
      icon: const Icon(Icons.add),
      label: const Text(
        'Start a room',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          fontSize: 16,
        ),
      ),
    );
  }
}
