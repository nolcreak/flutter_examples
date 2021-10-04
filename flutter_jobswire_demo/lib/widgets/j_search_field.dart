import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class JSearchField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData iconData;
  final TextEditingController? textEditingController;
  final Function(String value) onChanged;
  const JSearchField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.onChanged,
    required this.iconData,
    this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 7,
            offset: const Offset(0, 5),
          )
        ],
        color: ColorConstants.jWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: Column(
          children: [
            TextField(
              onChanged: onChanged,
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: labelText,
                hintText: hintText,
                suffixIcon: Icon(
                  iconData,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
