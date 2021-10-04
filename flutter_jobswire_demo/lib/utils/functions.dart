import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../constants/color_constants.dart';

class Functions {
  void modalBottomSheetMenu(context, String text) {
    final double height = MediaQuery.of(context).size.height;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (builder) {
        return Stack(
          children: [
            Container(
              height: height * 0.7,
              decoration: const BoxDecoration(
                color: ColorConstants.jWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    right: 8,
                    left: 8,
                    bottom: 80,
                  ),
                  child: Html(
                    data: text,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 70,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.star_border_rounded),
                          style: ElevatedButton.styleFrom(
                            primary: ColorConstants.jBlue,
                          ),
                          label: const Text('Save'),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.last_page_rounded),
                          style: ElevatedButton.styleFrom(
                            primary: ColorConstants.jGreen,
                          ),
                          label: const Text('Apply'),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
