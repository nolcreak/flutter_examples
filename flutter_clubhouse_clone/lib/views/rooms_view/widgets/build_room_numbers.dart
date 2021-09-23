import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants/color_constants.dart';

class BuildRoomNumbers extends StatelessWidget {
  final int totalPerson;
  final int totalSpeaker;

  const BuildRoomNumbers({required this.totalPerson, required this.totalSpeaker});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: const TextStyle(fontSize: 15, color: ColorConstants.mediumGrayColor),
        children: [
          TextSpan(text: totalPerson.toString()),
          const WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Icon(
                Icons.person,
                size: 16,
                color: ColorConstants.mediumGrayColor,
              ),
            ),
          ),
          const TextSpan(text: ' / '),
          TextSpan(text: totalSpeaker.toString()),
          const WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0),
              child: Icon(
                Icons.sms,
                size: 16,
                color: ColorConstants.mediumGrayColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
