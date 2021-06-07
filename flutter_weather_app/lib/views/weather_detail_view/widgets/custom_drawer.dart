import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/weather_detail_controller.dart';

class MyDrawer extends StatelessWidget {
  final WeatherDetailController controller;

  const MyDrawer({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 100,
              width: double.infinity,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Saved Locations',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                separatorBuilder: (BuildContext context, int index) => Divider(
                  height: 10,
                ),
                itemCount: controller.locationData.length,
                itemBuilder: (BuildContext context, int index) {
                  final locationData = controller.locationData;
                  return ListTile(
                    onTap: () {
                      controller.getDetails({'q': locationData[index]});
                      Get.back();
                    },
                    title: Text(
                      locationData[index],
                    ),
                    trailing: IconButton(
                      onPressed: () => controller.removeLocation(index),
                      icon: Icon(
                        Icons.cancel_outlined,
                        color: Colors.red,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
