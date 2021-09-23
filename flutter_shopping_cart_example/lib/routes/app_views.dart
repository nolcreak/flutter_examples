import 'package:get/get.dart';

import './app_routes.dart';

import '../views/shopping_items_view/shopping_items_view.dart';
import '../views/shopping_cart_view/shopping_cart_view.dart';

import '../utils/bindings/shopping_items_binding.dart';

class AppViews {
  static final List<GetPage> appViews = [
    GetPage(
      name: AppRoutes.SHOPPING_ITEMS,
      page: () => ShoppingItemsView(),
      binding: ShoppingItemsBinding(),
    ),
    GetPage(
      name: AppRoutes.SHOPPING_CART,
      page: () => ShoppingCartView(),
    ),
  ];
}
