import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/color_constants.dart';

class BuildLeaveBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstants.darkGrayColor,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(10),
        child: Text(
          '✌️ Leave quietly',
          style: TextStyle(
            color: ColorConstants.redColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
