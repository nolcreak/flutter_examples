import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'build_avatars.dart';
import 'build_speakers.dart';
import 'build_room_numbers.dart';
import '../../../models/room_model.dart';
import '../../../routes/app_routes.dart';
import '../../../models/person_model.dart';
import '../../../constants/app_constants.dart';
import '../../../widgets/build_club_name.dart';
import '../../../widgets/build_room_name.dart';
import '../../../constants/color_constants.dart';

class BuildRoom extends StatelessWidget {
  final RoomModel roomModel;
  final PersonModel profile;

  const BuildRoom({
    required this.roomModel,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    final persons = roomModel.persons;
    final totalNumber = persons.followers.length + persons.others.length + persons.speakers.length;

    return GestureDetector(
      onTap: () {
        Get.toNamed(
          AppRoutes.roomView,
          arguments: {
            'roomModel': roomModel,
            'profile': profile,
          },
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white, boxShadow: [
          BoxShadow(
            color: ColorConstants.mediumGrayColor.withOpacity(.25),
            offset: const Offset(0, 1),
            spreadRadius: 1.5,
            blurRadius: 1.5,
          )
        ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            BuildClubName(clubName: roomModel.clubName),
            BuildRoomName(roomName: roomModel.roomName),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BuildAvatars(
                    avatars: List.generate(
                      AppConstants.minSpeakerNumber,
                      (index) => roomModel.persons.speakers[index],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BuildSpeakers(
                            persons: roomModel.persons,
                          ),
                          BuildRoomNumbers(
                            totalPerson: totalNumber,
                            totalSpeaker: roomModel.persons.speakers.length,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
