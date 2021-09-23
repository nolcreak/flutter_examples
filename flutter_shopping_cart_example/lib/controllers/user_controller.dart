import 'package:get/get.dart';

import '../models/user_model.dart';
import '../models/shopping_cart_item_model.dart';

class UserController extends GetxController {
  late final RxList<ShoppingCartItem> _shoppingCart;
  late final User user;

  @override
  void onInit() {
    _shoppingCart = <ShoppingCartItem>[].obs;
    user = User(_shoppingCart);

    super.onInit();
  }

  Rx<double> get totalPrice => user.shoppingCart
      .fold(0.0.obs, (previousValue, element) => previousValue + element.amount * element.shoppingItem.price);

  RxInt get totalAmount => user.shoppingCart.fold(0.obs, (previousValue, element) => previousValue + element.amount);

  void addToShoppingCart(Rx<ShoppingCartItem> shoppingCartItem) {
    if (user.shoppingCart.isEmpty) {
      user.shoppingCart.add(shoppingCartItem.value);
    } else {
      for (final item in user.shoppingCart) {
        if (item.shoppingItem.id == shoppingCartItem.value.shoppingItem.id) {
          final index = user.shoppingCart.indexOf(shoppingCartItem.value);

          shoppingCartItem.update((val) {
            val!.amount++;
          });

          user.shoppingCart[index] = shoppingCartItem.value;

          return;
        }
      }

      user.shoppingCart.add(shoppingCartItem.value);
    }
  }

  void removeFromShoppingCart(Rx<ShoppingCartItem> shoppingCartItem) {
    if (shoppingCartItem.value.amount - 1 == 0) {
      user.shoppingCart.remove(shoppingCartItem.value);
    } else {
      final index = user.shoppingCart.indexOf(shoppingCartItem.value);

      shoppingCartItem.update(
        (val) {
          val!.amount--;
        },
      );

      user.shoppingCart[index] = shoppingCartItem.value;
    }

    if (user.shoppingCart.isEmpty) {
      Get.back();
    }
  }
}
