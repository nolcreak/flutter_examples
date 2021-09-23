import 'package:flutter/material.dart';

import '../../../controllers/user_controller.dart';
import '../../../controllers/shopping_items_controller.dart';
import '../../../widgets/app_icon_btn.dart';

class BuildShoppingItems extends StatelessWidget {
  final ShoppingItemsController shoppingItemsController;
  final UserController userController;

  BuildShoppingItems({required this.userController, required this.shoppingItemsController});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shoppingItemsController.shoppingItems.length,
      itemBuilder: (context, index) {
        final shoppingItem = shoppingItemsController.shoppingItems[index].value.shoppingItem;

        final name = shoppingItem.name;
        final price = shoppingItem.price;

        return ListTile(
          title: Text(name),
          subtitle: Text('Price: \$$price'),
          trailing: AppIconBtn(
            function: () => userController.addToShoppingCart(shoppingItemsController.shoppingItems[index]),
            icon: Icons.add,
          ),
        );
      },
    );
  }
}
