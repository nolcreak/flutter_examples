import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:faker/faker.dart';

import '../../models/shopping_cart_item_model.dart';
import '../../models/shopping_item_model.dart';

import '../extensions/double_extensions.dart';

mixin ShoppingItemsMixin {
  List<Rx<ShoppingCartItem>> getShoppingItems(int amount) {
    final faker = Faker();
    final random = Random();

    return List.generate(
      amount,
      (index) {
        final shoppingItem = ShoppingItem(
          id: index,
          name: faker.food.cuisine(),
          price: (random.nextDouble() * 100).toDoubleAsFixed(2),
        );

        return ShoppingCartItem(shoppingItem: shoppingItem, amount: 1).obs;
      },
    );
  }

  Widget badgeBtn({required controller, required IconData icon}) => Badge(
        badgeContent: Obx(
          () => Text(
            controller.totalAmount.toString(),
          ),
        ),
        child: Icon(icon),
      );
}
