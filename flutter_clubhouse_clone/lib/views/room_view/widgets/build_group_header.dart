import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';

class BuildGroupHeader extends StatelessWidget {
  final String headerText;

  BuildGroupHeader({required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        headerText,
        style: TextStyle(
          color: ColorConstants.darkBeigeColor,
        ),
      ),
    );
  }
}
