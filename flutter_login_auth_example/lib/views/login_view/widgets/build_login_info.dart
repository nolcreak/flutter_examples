import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/my_icon_btn.dart';
import '../../../utils/extensions/getx_extensions.dart';
import '../../../services/api_service/user_service.dart';

class BuildLoginInfo extends StatelessWidget {
  final UserService _userService = UserService();

  final EdgeInsets padding = EdgeInsets.all(15);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding,
      padding: padding,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('E-Mail: '),
              SelectableText(_userService.defaultEmail),
              MyIconBtn(onPressed: () => Get.copyToClipboard(_userService.defaultEmail), icon: Icons.copy)
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Password: '),
              SelectableText(_userService.defaultPassword),
              MyIconBtn(onPressed: () => Get.copyToClipboard(_userService.defaultPassword), icon: Icons.copy)
            ],
          )
        ],
      ),
    );
  }
}
