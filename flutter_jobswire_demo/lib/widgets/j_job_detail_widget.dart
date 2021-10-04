import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'j_custom_avatar.dart';
import '../constants/color_constants.dart';

class JobDetailWidget extends StatelessWidget {
  final String companyLogoUrl;
  final String companyName;
  final String? companyLocation;
  final String companyJobPosition;
  final List<String>? tags;
  final String companyPostedTime;

  const JobDetailWidget({
    Key? key,
    required this.companyLogoUrl,
    required this.companyName,
    this.companyLocation,
    required this.companyJobPosition,
    this.tags,
    required this.companyPostedTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 7,
            offset: const Offset(1, 2),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                JCustomAvatar(
                  height: 48,
                  width: 48,
                  url: companyLogoUrl == ''
                      ? 'https://developers.google.com/maps/documentation/streetview/images/error-image-generic.png'
                      : companyLogoUrl,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      companyName,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.5),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        companyLocation ?? '',
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.5,
                            overflow: TextOverflow.ellipsis),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        softWrap: false,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.star_border_outlined,
                  color: Colors.grey,
                  size: 22,
                )
              ],
            ),
            const SizedBox(height: 15),
            Text(
              companyJobPosition,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.5,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 210,
                  child: MediaQuery.removePadding(
                    removeTop: true,
                    context: context,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tags?.length ?? 0,
                      itemBuilder: (_, index) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Chip(
                          backgroundColor: ColorConstants.jLightYellow,
                          label: Text(
                            tags![index],
                            style: const TextStyle(
                              color: ColorConstants.jOrange,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  'Posted on $companyPostedTime',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
