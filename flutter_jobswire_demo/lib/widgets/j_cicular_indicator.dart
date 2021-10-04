import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../constants/color_constants.dart';

class JCircularIndicator extends StatelessWidget {
  final String text;
  const JCircularIndicator({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 65,
      animation: true,
      animationDuration: 1200,
      lineWidth: 5,
      percent: 0.4,
      center: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      circularStrokeCap: CircularStrokeCap.round,
      backgroundColor: ColorConstants.jWhite,
      progressColor: ColorConstants.jYellow,
    );
  }
}
