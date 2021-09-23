import 'package:get/get.dart';

import '../models/shopping_cart_item_model.dart';
import '../utils/mixins/shopping_items_mixin.dart';

class ShoppingItemsController extends GetxController with ShoppingItemsMixin {
  late final List<Rx<ShoppingCartItem>> shoppingItems;

  @override
  void onInit() {
    shoppingItems = getShoppingItems(50);

    super.onInit();
  }
}
