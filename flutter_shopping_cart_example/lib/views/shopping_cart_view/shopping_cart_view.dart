import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/user_controller.dart';
import './widgets/build_shopping_cart.dart';

import '../../utils/extensions/double_extensions.dart';

class ShoppingCartView extends GetView<UserController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text('Total Price: \$${controller.totalPrice.value.toDoubleAsFixed(2)}'),
        ),
      ),
      body: BuildShoppingCart(controller: controller),
    );
  }
}
