import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';

class BuildBottomGradient extends StatelessWidget {
  const BuildBottomGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorConstants.lightBeigeColor.withOpacity(0.1),
              ColorConstants.lightBeigeColor,
            ],
          ),
        ),
      ),
    );
  }
}
