import 'package:flutter/material.dart';

import '../../../widgets/my_icon_btn.dart';
import '../../../constants/color_constants.dart';

class BuildBottomBarIcon extends StatelessWidget {
  final Icon icon;

  const BuildBottomBarIcon({
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstants.darkGrayColor,
        shape: BoxShape.circle,
      ),
      child: MyIconBtn(
        icon: icon,
        onTap: () {},
      ),
    );
  }
}
