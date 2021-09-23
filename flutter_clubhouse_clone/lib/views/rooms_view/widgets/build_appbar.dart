import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../models/person_model.dart';
import '../../../widgets/my_icon_btn.dart';
import '../../../widgets/profile_widget.dart';

class BuildAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final PersonModel profile;

  final EdgeInsets _paddingSize = const EdgeInsets.all(8.0);

  BuildAppBar({Key? key, required this.profile})
      : preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: _paddingSize,
        child: MyIconBtn(
          icon: const Icon(CupertinoIcons.search),
          onTap: () {},
        ),
      ),
      actions: [
        Padding(
          padding: _paddingSize,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyIconBtn(
                icon: const Icon(CupertinoIcons.mail),
                onTap: () {},
              ),
              MyIconBtn(
                icon: const Icon(CupertinoIcons.calendar),
                onTap: () {},
              ),
              MyIconBtn(
                icon: const Icon(CupertinoIcons.bell),
                onTap: () {},
              ),
              InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: ProfileWidget(
                  imageURL: profile.imageURL,
                  size: 24,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
