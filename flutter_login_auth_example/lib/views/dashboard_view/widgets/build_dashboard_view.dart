import 'package:flutter/material.dart';

import '../../../controllers/dashboard_controller.dart';

class BuildDashboardView extends StatelessWidget {
  final DashboardController controller;
  BuildDashboardView({required this.controller});

  final textStyle = const TextStyle(color: Colors.black, fontSize: 16);
  final btnPadding = const EdgeInsets.symmetric(vertical: 15, horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: double.infinity),
        RichText(
          text: TextSpan(
            style: textStyle,
            text: 'E-Mail: ',
            children: [
              TextSpan(
                text: controller.getEmail,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        RichText(
          text: TextSpan(
            style: textStyle,
            text: 'Token: ',
            children: [
              TextSpan(
                text: controller.getToken,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {
            controller.logout(removeData: true);
          },
          child: Padding(
            padding: btnPadding,
            child: Text('LOGOUT'),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        ElevatedButton(
          onPressed: () {
            controller.logout(removeData: false);
          },
          child: Padding(
            padding: btnPadding,
            child: Text('LOGOUT WITHOUT REMOVE DATA'),
          ),
        )
      ],
    );
  }
}
