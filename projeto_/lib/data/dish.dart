import 'package:flutter/material.dart';
import 'package:projeto_/components/dish_card.dart';

class DishInherite extends InheritedWidget {
  DishInherite({
    super.key,
    required super.child,
  });

  final List<Dish> dishesList = [
    Dish(image: 'quinoa', name: 'quinoa', price: 2, color: 0xff)
  ];

  void newDish(String name, String image, int price, int color) {
    dishesList.add(Dish(image: image, name: name, price: price, color: color,));
  }

  static DishInherite of(BuildContext context) {
    final DishInherite? result =
        context.dependOnInheritedWidgetOfExactType<DishInherite>();
    assert(result != null, 'No Dish found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(DishInherite oldWidget) {
    return oldWidget.dishesList.length != dishesList.length;
  }
}
