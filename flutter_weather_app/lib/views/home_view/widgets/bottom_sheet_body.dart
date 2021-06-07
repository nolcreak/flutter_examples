import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routers/app_routers.dart';
import '../../../controllers/home_controller.dart';

class BottomSheetBody extends StatelessWidget {
  final HomeController controller;

  const BottomSheetBody({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            autofocus: true,
            controller: controller.textEditingController,
            onChanged: (value) {
              if (value.isNotEmpty) {
                controller.onChanged.value = value;
              }
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Obx(
          () => controller.loading.value
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: controller.countryList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () async {
                          await Get.offAndToNamed(
                            AppRouters.WEATHER_DETAIL_VIEW,
                            arguments: controller.countryList[index].name,
                          );
                          controller.countryList.clear();
                          controller.textEditingController.clear();
                        },
                        child: ListTile(
                          title: Text(
                            controller.countryList[index].name,
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ),
      ],
    );
  }
}
