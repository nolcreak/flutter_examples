import 'package:flutter/material.dart';

import 'build_group_header.dart';
import '../../../models/person_model.dart';
import '../../../widgets/profile_widget.dart';
import '../../../widgets/build_person_name.dart';

class BuildOtherPersons extends StatelessWidget {
  final List<PersonModel> persons;
  final String headerText;

  BuildOtherPersons({
    required this.persons,
    required this.headerText,
  });

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = MediaQuery.of(context).size.width ~/ 80;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildGroupHeader(headerText: headerText),
        GridView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 10,
          ),
          itemCount: persons.length,
          itemBuilder: (context, index) {
            final person = persons[index];

            return Container(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: ProfileWidget(
                        imageURL: person.imageURL,
                        marginSize: 0,
                      ),
                    ),
                  ),
                  FittedBox(child: BuildPersonName(name: person.firstName))
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
