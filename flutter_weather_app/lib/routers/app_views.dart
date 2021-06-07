import 'package:get/get.dart';

import '../routers/app_routers.dart';
import '../views/home_view/home_view.dart';
import '../utils/bindings/home_binding.dart';
import '../views/weather_detail_view/weather_detail_view.dart';
import '../utils/bindings/weather_detail_binding.dart';

class AppView {
  static final List<GetPage> getPages = [
    GetPage(
      name: AppRouters.HOME_VIEW,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouters.WEATHER_DETAIL_VIEW,
      page: () => WeatherDetailView(),
      binding: WeatherDetailBinding(),
    ),
  ];
}
