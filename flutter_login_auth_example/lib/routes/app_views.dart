import 'package:get/get.dart';

import './app_routes.dart';

import '../views/dashboard_view/dashboard_view.dart';
import '../views/login_view/login_view.dart';

import '../utils/bindings/dashboard_controller_binding.dart';
import '../utils/bindings/login_controller_binding.dart';

class AppViews {
  static final List<GetPage> appViews = <GetPage>[
    GetPage(
      name: AppRoutes.LOGIN_VIEW,
      page: () => LoginView(),
      binding: LoginViewControllerBinding(),
    ),
    GetPage(
      name: AppRoutes.DASHBOARD_VIEW,
      page: () => DashboardView(),
      binding: DashboardControllerBinding(),
    ),
  ];
}
