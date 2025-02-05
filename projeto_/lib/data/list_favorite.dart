import 'package:flutter/material.dart';
import 'package:projeto_/data/dish_model.dart';

class ListFavorite extends InheritedWidget {
  final List<DishModel> favoriteList;

  ListFavorite({
    super.key,
    required super.child,
    List<DishModel>? initialFavorites,
  }) : favoriteList = initialFavorites ?? [];

  void addToFavorites(DishModel dish) {
    if (!favoriteList.contains(dish)) {
      favoriteList.add(dish);
    }
  }

  void removeFromFavorites(DishModel dish) {
    favoriteList.remove(dish);
  }

  bool isFavorite(DishModel dish) {
    return favoriteList.contains(dish);
  }

  static ListFavorite of(BuildContext context) {
    final ListFavorite? result =
    context.dependOnInheritedWidgetOfExactType<ListFavorite>();
    assert(result != null, 'No ListFavorite found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ListFavorite oldWidget) {
    return oldWidget.favoriteList.length != favoriteList.length;
  }
}
