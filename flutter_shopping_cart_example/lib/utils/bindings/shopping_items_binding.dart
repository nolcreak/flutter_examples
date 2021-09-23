import 'package:get/get.dart';

import '../../controllers/shopping_items_controller.dart';

class ShoppingItemsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ShoppingItemsController());
  }
}
