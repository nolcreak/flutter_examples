import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants/color_constants.dart';

class BuildModIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorConstants.greenColor,
      ),
      child: Icon(
        CupertinoIcons.staroflife_fill,
        color: ColorConstants.whiteColor,
        size: 13,
      ),
    );
  }
}
