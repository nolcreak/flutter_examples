import 'package:flutter/material.dart';

import '../constants/color_constants.dart';
import 'j_custom_avatar.dart';
import 'j_app_bar_icons.dart';
import 'j_cicular_indicator.dart';
import 'j_search_field.dart';
import 'j_user_about.dart';

class JAppBar extends StatelessWidget {
  const JAppBar({
    Key? key,
    required this.circularIndicatorValue,
    required this.nameAndSurname,
    required this.jobTitle,
    required this.lastUpdatedDay,
    required this.avatarUrl,
    required this.textFieldLabelText,
    required this.textFieldHintText,
    required this.onChanged,
    this.textEditingController,
    required this.textFildIconData,
  }) : super(key: key);
  final String circularIndicatorValue;
  final String nameAndSurname;
  final String jobTitle;
  final String lastUpdatedDay;
  final String avatarUrl;
  final String textFieldLabelText;
  final String textFieldHintText;
  final Function(String) onChanged;
  final TextEditingController? textEditingController;
  final IconData textFildIconData;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * 0.30,
      child: Stack(
        children: [
          Container(
            height: height * 0.25,
            padding: EdgeInsets.symmetric(
              vertical: height * 0.055,
              horizontal: width * 0.050,
            ),
            color: ColorConstants.jGreen,
            child: Column(
              children: [
                const JAppBarICons(),
                SizedBox(height: height * 0.015),
                Row(
                  children: [
                    JCircularIndicator(text: circularIndicatorValue),
                    SizedBox(width: width * 0.015),
                    JUserAbout(
                      nameAndSurname: nameAndSurname,
                      jobTitle: jobTitle,
                      lastUpdatedDay: lastUpdatedDay,
                    ),
                    const Spacer(),
                    JCustomAvatar(url: avatarUrl),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: JSearchField(
              onChanged: onChanged,
              textEditingController: textEditingController,
              labelText: textFieldLabelText,
              hintText: textFieldHintText,
              iconData: textFildIconData,
            ),
          )
        ],
      ),
    );
  }
}
