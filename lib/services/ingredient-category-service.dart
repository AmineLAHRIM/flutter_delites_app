import 'package:delites/models/ingredient-category.dart';
import 'package:delites/models/tag.dart';
import 'package:flutter/cupertino.dart';

class IngredientCategoryService extends ChangeNotifier {
  List<IngredientCategory> _items = [
    IngredientCategory(
      id: 'ingredientcategory1',
      name: 'All',
      tags:[
        Tag(id: 'tag1'),
        Tag(id: 'tag2'),
      ],
    ),
    IngredientCategory(
      id: 'ingredientcategory2',
      name: 'For You',
      tags:[
        Tag(id: 'tag1'),
        Tag(id: 'tag2'),
      ],
    ),
    IngredientCategory(
      id: 'ingredientcategory3',
      name: 'Apple',
      tags:[
        Tag(id: 'tag1'),
        Tag(id: 'tag4'),
      ],
    ),
    IngredientCategory(
      id: 'ingredientcategory4',
      name: 'Banana',
      tags:[
        Tag(id: 'tag1'),
        Tag(id: 'tag3'),
      ],
    ),
    IngredientCategory(
      id: 'ingredientcategory5',
      name: 'Watermelon',
      tags:[
        Tag(id: 'tag1'),
        Tag(id: 'tag4'),
      ],
    ),
  ];

  List<IngredientCategory> findAll() {
    //return [..._items];
    return _items;
  }

  IngredientCategory findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }
}
