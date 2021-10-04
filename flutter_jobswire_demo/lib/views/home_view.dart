import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/functions.dart';
import '../constants/color_constants.dart';
import '../controllers/home_view_controller.dart';
import '../widgets/j_app_bar.dart';
import '../widgets/j_job_detail_widget.dart';
import '../widgets/j_title_widget.dart';
import '../widgets/j_filter_chip.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    final EdgeInsets padding = EdgeInsets.only(
      top: height * 0.02,
      left: width * 0.05,
      right: width * 0.05,
    );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Consumer<HomeViewController>(
            builder: (_, controller, __) => JAppBar(
              circularIndicatorValue: '%40',
              nameAndSurname: 'Yakup Emeksiz',
              jobTitle: 'Flutter Developer',
              lastUpdatedDay: '2',
              avatarUrl: 'https://wallpaperaccess.com/full/2213424.jpg',
              textFieldLabelText: 'Search For?',
              textFieldHintText: 'Job, Title, Company etc',
              textFildIconData: Icons.search,
              onChanged: controller.onTextChange,
            ),
          ),
          Padding(
            padding: padding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                JFilterChip(
                  text: 'Recently Added',
                  value: '31',
                  color: ColorConstants.jBlue,
                  valueColor: Colors.black,
                  valueBackgraundColor: ColorConstants.jWhite,
                  textColor: Colors.white,
                ),
                JFilterChip(
                  text: 'Matching Jobs',
                  value: '55',
                  color: ColorConstants.jWhite,
                  valueColor: ColorConstants.jOrange,
                  valueBackgraundColor: ColorConstants.jLightYellow,
                  textColor: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: padding.copyWith(bottom: height * 0.02),
            child: const JTitleWidget(
              title: 'New Jobs For Recruiters',
              subtitle: 'You Can Select Multiple Jobs To Apply',
            ),
          ),
          Expanded(
            child: Consumer<HomeViewController>(
              builder: (_, model, __) => Builder(
                builder: (context) {
                  if (model.jobs.isNotEmpty) {
                    return MediaQuery.removePadding(
                      removeTop: true,
                      context: context,
                      child: ListView.builder(
                        itemCount: model.jobs.length,
                        itemBuilder: (_, index) => GestureDetector(
                          onTap: () {
                            Functions().modalBottomSheetMenu(
                                context, model.jobs[index].description!);
                          },
                          child: Padding(
                            padding: padding.copyWith(
                              top: 0,
                              bottom: height * 0.02,
                            ),
                            child: JobDetailWidget(
                              companyLogoUrl: model.jobs[index].companyLogo!,
                              companyName: model.jobs[index].company!,
                              companyLocation: model.jobs[index].location,
                              companyJobPosition: model.jobs[index].position!,
                              tags: model.jobs[index].tags,
                              companyPostedTime: 'Sep 08',
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
