import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'build_speakers.dart';
import 'build_other_persons.dart';
import '../../../models/room_model.dart';
import '../../../widgets/build_room_name.dart';
import '../../../constants/color_constants.dart';

import 'build_club_name_with_dots.dart';

class BuildRoom extends StatelessWidget {
  final RoomModel roomModel;

  BuildRoom({
    required this.roomModel,
  });

  @override
  Widget build(BuildContext context) {
    final _radius = const Radius.circular(50);
    final _borderRadius = BorderRadius.only(
      topLeft: _radius,
      topRight: _radius,
    );

    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: ColorConstants.whiteColor,
        borderRadius: _borderRadius,
      ),
      child: ClipRRect(
        borderRadius: _borderRadius,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildClubNameWithDots(clubName: roomModel.clubName),
                SizedBox(height: 4),
                BuildRoomName(
                  roomName: roomModel.roomName,
                  fontSize: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Wrap(
                    runSpacing: 15,
                    children: [
                      BuildSpeakers(speakers: roomModel.persons.speakers),
                      Visibility(
                        visible: roomModel.persons.followers.isNotEmpty,
                        child: BuildOtherPersons(
                          persons: roomModel.persons.followers,
                          headerText: 'Followed by the speakers',
                        ),
                      ),
                      Visibility(
                        visible: roomModel.persons.others.isNotEmpty,
                        child: BuildOtherPersons(
                          persons: roomModel.persons.others,
                          headerText: 'Others in the room',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
