import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class JUserAbout extends StatelessWidget {
  const JUserAbout({
    Key? key,
    required this.nameAndSurname,
    required this.jobTitle,
    required this.lastUpdatedDay,
  }) : super(key: key);

  final String nameAndSurname;
  final String jobTitle;
  final String lastUpdatedDay;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nameAndSurname,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          jobTitle,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              letterSpacing: -0.1),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Last Updated $lastUpdatedDay days ago',
          style: const TextStyle(
            color: ColorConstants.jLightYellow,
            fontWeight: FontWeight.w500,
            fontSize: 12,
            letterSpacing: -0.1,
          ),
        ),
      ],
    );
  }
}
