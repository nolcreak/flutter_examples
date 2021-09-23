import 'package:get/get.dart';

import 'app_routes.dart';
import '../views/room_view/room_view.dart';
import '../views/rooms_view/rooms_view.dart';

mixin AppViews {
  static final List<GetPage> appViews = <GetPage>[
    GetPage(
      name: AppRoutes.roomsView,
      page: () => RoomsView(),
    ),
    GetPage(
      name: AppRoutes.roomView,
      page: () => RoomView(),
    )
  ];
}
