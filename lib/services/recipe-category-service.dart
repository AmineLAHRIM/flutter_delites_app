import 'package:delites/models/recipe-category.dart';
import 'package:flutter/cupertino.dart';

class RecipeCategoryService extends ChangeNotifier {
  List<RecipeCategory> _items = [
    RecipeCategory(
      id: 'recipe1',
      name: 'Take Your Pick',
      decription: '',
    ),
    RecipeCategory(
      id: 'recipe2',
      name: 'Breakfast',
      decription: 'Breakfast is widely acknowledged to be the most important meal of the day.',
    ),
    RecipeCategory(
      id: 'recipe3',
      name: 'Snack',
      decription: 'Snacking allows you not to feel hungry during the day and prevents a decrease inblood glucose.',
    ),
    RecipeCategory(
      id: 'recipe4',
      name: 'Lunch',
      decription: 'Lunch usually refers to the most significant meal of the day.',
    ),
    RecipeCategory(
      id: 'recipe5',
      name: 'Dinner',
      decription: 'Dinner is your last meal 2 - 3 hours before bedtime.',
    ),
  ];

  List<RecipeCategory> findAll() {
    //return [..._items];
    return _items;
  }

  RecipeCategory findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }
}
