import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../models/person_model.dart';
import '../../../widgets/my_icon_btn.dart';
import '../../../widgets/profile_widget.dart';
import '../../../constants/color_constants.dart';

class BuildAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final PersonModel profile;

  BuildAppBar({
    Key? key,
    required this.profile,
  })  : preferredSize = Size.fromHeight(60),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(15),
                primary: ColorConstants.blackColor,
              ),
              onPressed: () {
                Get.back();
              },
              child: Row(
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Hallway',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.75,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            MyIconBtn(
              icon: Icon(Icons.description_outlined),
              onTap: () {},
            ),
            InkWell(
              customBorder: const CircleBorder(),
              onTap: () {},
              child: ProfileWidget(
                imageURL: profile.imageURL,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
