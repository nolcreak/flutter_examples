import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'build_leave_btn.dart';
import 'build_bottom_bar_icon.dart';
import '../../../constants/color_constants.dart';

class BuildBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: ColorConstants.whiteColor,
        ),
        child: Row(
          children: [
            BuildLeaveBtn(),
            Spacer(),
            BuildBottomBarIcon(
              icon: Icon(
                Icons.add,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            BuildBottomBarIcon(
              icon: Icon(
                CupertinoIcons.hand_raised,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
