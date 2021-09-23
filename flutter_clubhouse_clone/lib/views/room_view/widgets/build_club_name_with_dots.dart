import 'package:flutter/material.dart';

import '../../../widgets/my_icon_btn.dart';
import '../../../widgets/build_club_name.dart';

class BuildClubNameWithDots extends StatelessWidget {
  final String clubName;

  BuildClubNameWithDots({required this.clubName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: BuildClubName(
            clubName: clubName,
          ),
        ),
        MyIconBtn(
          icon: Icon(Icons.more_horiz),
          onTap: () {},
          size: 20,
        ),
      ],
    );
  }
}
