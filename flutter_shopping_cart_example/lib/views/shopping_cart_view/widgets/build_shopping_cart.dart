import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/user_controller.dart';
import '../../../widgets/app_icon_btn.dart';

import '../../../utils/extensions/double_extensions.dart';

class BuildShoppingCart extends StatelessWidget {
  final UserController controller;

  BuildShoppingCart({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: controller.user.shoppingCart.length,
        itemBuilder: (context, index) {
          final shoppingCartItem = controller.user.shoppingCart[index].obs;

          final amount = shoppingCartItem.value.amount.obs;
          final totalPrice =
              (shoppingCartItem.value.amount * shoppingCartItem.value.shoppingItem.price).toDoubleAsFixed(2).obs;

          return ListTile(
            title: Text(shoppingCartItem.value.shoppingItem.name),
            subtitle: Obx(
              () => Text(
                'Amount: $amount | Total Price: \$$totalPrice',
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppIconBtn(
                  function: () => controller.addToShoppingCart(shoppingCartItem),
                  icon: Icons.add,
                ),
                AppIconBtn(
                  function: () => controller.removeFromShoppingCart(shoppingCartItem),
                  icon: Icons.remove,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
