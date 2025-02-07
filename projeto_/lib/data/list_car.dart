import 'package:flutter/material.dart';
import '../data/dish_model.dart';

class CartInherited extends InheritedWidget {
  CartInherited({super.key, required super.child});

  final List<DishModel> listCart = [];

  void addToCart(String image, String name, int price, int quantidade, int color) {
    listCart.add(DishModel(
      image: image,
      name: name,
      price: price,
      quantidade: quantidade,
      color: color
    ));
  }

  static CartInherited of(BuildContext context) {
    final CartInherited? result =
    context.dependOnInheritedWidgetOfExactType<CartInherited>();
    assert(result != null, 'No CartInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(CartInherited oldWidget) {
    return oldWidget.listCart.length != listCart.length;
  }
}
