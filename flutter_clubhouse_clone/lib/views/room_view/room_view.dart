import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import 'widgets/build_room.dart';
import 'widgets/build_appbar.dart';
import '../../models/room_model.dart';
import 'widgets/build_bottom_bar.dart';
import '../../models/person_model.dart';
import '../../constants/app_constants.dart';

class RoomView extends StatelessWidget {
  final RoomModel roomModel = Get.arguments['roomModel'];
  final PersonModel profile = Get.arguments['profile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(profile: profile),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: AppConstants.bottomBarPadding),
            child: BuildRoom(roomModel: roomModel),
          ),
          BuildBottomBar(),
        ],
      ),
    );
  }
}
