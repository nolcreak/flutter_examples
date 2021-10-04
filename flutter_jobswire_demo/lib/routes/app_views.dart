import 'package:flutter/material.dart';

import 'app_routes.dart';
import '../views/home_view.dart';

mixin AppViews {
  static final Map<String, WidgetBuilder> appViews = {
    AppRoutes.homeView: (context) => const HomeView(),
  };
}
