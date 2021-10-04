import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants/theme_constants.dart';
import 'controllers/home_view_controller.dart';
import 'routes/app_routes.dart';
import 'routes/app_views.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => HomeViewController(),
          ),
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      routes: AppViews.appViews,
      initialRoute: AppRoutes.homeView,
    );
  }
}
