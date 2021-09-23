import './shopping_item_model.dart';

class ShoppingCartItem {
  final ShoppingItem shoppingItem;
  int amount;

  ShoppingCartItem({required this.shoppingItem, required this.amount});
}
