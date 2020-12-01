import 'package:delites/models/recipe-category.dart';
import 'package:delites/models/recipe.dart';
import 'package:delites/models/tag.dart';
import 'package:flutter/cupertino.dart';

class RecipeService extends ChangeNotifier {
  List<Recipe> _items = [
    Recipe(
        id: 'id1',
        name: 'Natural Eggs',
        time: '10',
        energy: 268,
        imageUrl: 'https://boostifly.com/uiux/delites/eggs.png',
        tags: [
          Tag(
              id: 'tag1',
              name: 'Foods',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/meat-on-bone_1f356.png'),
          Tag(
              id: 'tag2',
              name: 'Fruit',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/lemon_1f34b.png'),
          Tag(
              id: 'tag3',
              name: 'Healty',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/four-leaf-clover_1f340.png'),
        ],
        recipeCategory: RecipeCategory(id: 'recipe1', name: 'Take Your Pick')),
    Recipe(
        id: 'id2',
        name: 'Fresh Salad Thaid',
        time: '10',
        energy: 268,
        imageUrl: 'https://boostifly.com/uiux/delites/veg1.png',
        tags: [
          Tag(
              id: 'tag3',
              name: 'Healty',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/four-leaf-clover_1f340.png'),
          Tag(
              id: 'tag4',
              name: 'Drink',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/beer-mug_1f37a.png')
        ],
        recipeCategory: RecipeCategory(id: 'recipe1', name: 'Take Your Pick')),
    Recipe(
        id: 'id3',
        name: 'Sweet Potato Pie',
        time: '10',
        energy: 268,
        imageUrl: 'https://boostifly.com/uiux/delites/veg2.png',
        tags: [
          Tag(
              id: 'tag1',
              name: 'Foods',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/meat-on-bone_1f356.png'),
          Tag(
              id: 'tag2',
              name: 'Fruit',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/lemon_1f34b.png')
        ],
        recipeCategory: RecipeCategory(id: 'recipe1', name: 'Take Your Pick')),
    Recipe(
        id: 'id4',
        name: 'Walnut And Nuts',
        time: '10',
        energy: 268,
        imageUrl: 'https://boostifly.com/uiux/delites/walnut_and_nuts.png',
        tags: [
          Tag(
              id: 'tag4',
              name: 'Drink',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/beer-mug_1f37a.png'),
          Tag(
              id: 'tag1',
              name: 'Foods',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/meat-on-bone_1f356.png')
        ],
        recipeCategory: RecipeCategory(id: 'recipe2', name: 'Breakfast')),
    Recipe(
        id: 'id5',
        name: 'Circle Cake',
        time: '10',
        energy: 268,
        imageUrl: 'https://boostifly.com/uiux/delites/circle_cake.png',
        tags: [
          Tag(
              id: 'tag1',
              name: 'Foods',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/meat-on-bone_1f356.png'),
          Tag(
              id: 'tag2',
              name: 'Fruit',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/lemon_1f34b.png'),
          Tag(
              id: 'tag4',
              name: 'Drink',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/beer-mug_1f37a.png')
        ],
        recipeCategory: RecipeCategory(id: 'recipe3', name: 'Snack')),
    Recipe(
        id: 'id6',
        name: 'Humber',
        time: '10',
        energy: 268,
        imageUrl: 'https://boostifly.com/uiux/delites/humber.png',
        tags: [
          Tag(
              id: 'tag1',
              name: 'Foods',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/meat-on-bone_1f356.png'),
          Tag(
              id: 'tag2',
              name: 'Fruit',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/lemon_1f34b.png'),
          Tag(
              id: 'tag4',
              name: 'Drink',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/beer-mug_1f37a.png')
        ],
        recipeCategory: RecipeCategory(id: 'recipe3', name: 'Snack')),
    Recipe(
        id: 'id7',
        name: 'Salmon Tomato Sauce',
        time: '10',
        energy: 268,
        imageUrl: 'https://boostifly.com/uiux/delites/salmon_tomato_sauce.png',
        tags: [
          Tag(
              id: 'tag1',
              name: 'Foods',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/meat-on-bone_1f356.png'),
          Tag(
              id: 'tag2',
              name: 'Fruit',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/lemon_1f34b.png'),
          Tag(
              id: 'tag4',
              name: 'Drink',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/beer-mug_1f37a.png')
        ],
        recipeCategory: RecipeCategory(id: 'recipe4', name: 'Lunch')),
    Recipe(
        id: 'id8',
        name: 'Much',
        time: '10',
        energy: 268,
        imageUrl: 'https://boostifly.com/uiux/delites/much.png',
        tags: [
          Tag(
              id: 'tag1',
              name: 'Foods',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/meat-on-bone_1f356.png'),
          Tag(
              id: 'tag2',
              name: 'Fruit',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/lemon_1f34b.png'),
          Tag(
              id: 'tag4',
              name: 'Drink',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/beer-mug_1f37a.png')
        ],
        recipeCategory: RecipeCategory(id: 'recipe4', name: 'Lunch')),
    Recipe(
        id: 'id9',
        name: 'Fresh Salad Pasta',
        time: '10',
        energy: 268,
        imageUrl: 'https://boostifly.com/uiux/delites/fresh_salad_pasta.png',
        tags: [
          Tag(
              id: 'tag1',
              name: 'Foods',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/meat-on-bone_1f356.png'),
          Tag(
              id: 'tag2',
              name: 'Fruit',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/lemon_1f34b.png'),
          Tag(
              id: 'tag4',
              name: 'Drink',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/beer-mug_1f37a.png')
        ],
        recipeCategory: RecipeCategory(id: 'recipe5', name: 'Dinner')),
    Recipe(
        id: 'id10',
        name: 'Japan',
        time: '10',
        energy: 268,
        imageUrl: 'https://boostifly.com/uiux/delites/walnut_and_nuts.png',
        tags: [
          Tag(
              id: 'tag1',
              name: 'Foods',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/meat-on-bone_1f356.png'),
          Tag(
              id: 'tag2',
              name: 'Fruit',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/lemon_1f34b.png'),
          Tag(
              id: 'tag4',
              name: 'Drink',
              logoUrl:
                  'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/271/beer-mug_1f37a.png')
        ],
        recipeCategory: RecipeCategory(id: 'recipe5', name: 'Dinner')),
  ];

  List<Recipe> findAll() {
    //return [..._items];
    return _items;
  }

  Recipe findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  List<Recipe> findByRecipeCategoryId(String id) {
    return _items.where((element) => element.recipeCategory.id == id).toList();
  }

  List<Recipe> findByTagId(String id) {
    return _items.where((element) {
      Tag foundedTag = element.tags.firstWhere((element2) => element2.id == id);
      return foundedTag != null ? true : false;
    }).toList();
  }
}
