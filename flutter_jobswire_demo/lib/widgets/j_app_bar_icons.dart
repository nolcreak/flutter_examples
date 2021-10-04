import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class JAppBarICons extends StatelessWidget {
  const JAppBarICons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.menu,
          color: ColorConstants.jWhite,
        ),
        Spacer(),
        Icon(
          Icons.email_outlined,
          color: ColorConstants.jWhite,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.notifications_outlined,
          color: ColorConstants.jWhite,
        ),
      ],
    );
  }
}
