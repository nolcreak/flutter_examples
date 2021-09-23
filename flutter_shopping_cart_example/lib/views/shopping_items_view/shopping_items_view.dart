import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/user_controller.dart';
import '../../controllers/shopping_items_controller.dart';
import '../../routes/app_routes.dart';
import '../../utils/mixins/shopping_items_mixin.dart';

import '../../widgets/app_fab_btn.dart';
import './widgets/build_shopping_items.dart';

class ShoppingItemsView extends StatelessWidget with ShoppingItemsMixin {
  final UserController userController = Get.find<UserController>();
  final ShoppingItemsController shoppingItemsController = Get.find<ShoppingItemsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Items View'),
      ),
      body: BuildShoppingItems(shoppingItemsController: shoppingItemsController, userController: userController),
      floatingActionButton: AppFabBtn(
        onPressed: () => Get.toNamed(AppRoutes.SHOPPING_CART),
        child: badgeBtn(
          controller: userController,
          icon: Icons.shopping_cart,
        ),
      ),
    );
  }
}
