import 'package:delites/models/recipe-category.dart';
import 'package:flutter/cupertino.dart';

class RecipeCategoryService extends ChangeNotifier {
  List<RecipeCategory> _items = [
    RecipeCategory(id: 'recipe1', name: 'Take Your Pick'),
    RecipeCategory(id: 'recipe2', name: 'Breakfast'),
    RecipeCategory(id: 'recipe3', name: 'Snack'),
    RecipeCategory(id: 'recipe4', name: 'Lunch'),
    RecipeCategory(id: 'recipe5', name: 'Dinner'),
  ];


  List<RecipeCategory> findAll(){
    //return [..._items];
    return _items;
  }

  RecipeCategory findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }
}
