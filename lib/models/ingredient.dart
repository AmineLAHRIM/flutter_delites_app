import 'package:delites/models/ingredient-category.dart';
import 'package:delites/models/unit.dart';

class Ingredient{
  String id;
  String name;
  double weight;
  Unit unit;
  double price;
  String imageUrl;
  double promoPrice;
  double shippingPrice;
  IngredientCategory ingredientCategory;
  bool isFavourite = false;


  Ingredient({this.id, this.name, this.weight, this.unit, this.price,this.imageUrl, this.promoPrice, this.shippingPrice, this.ingredientCategory});
}


