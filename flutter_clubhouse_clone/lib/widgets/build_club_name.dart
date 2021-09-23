import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class BuildClubName extends StatelessWidget {
  final String clubName;

  const BuildClubName({required this.clubName});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: const TextStyle(letterSpacing: 0.5),
        children: [
          TextSpan(
            text: clubName,
          ),
          const WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.home_filled,
                color: ColorConstants.greenColor,
                size: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
