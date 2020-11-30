import 'package:delites/models/recipe-category.dart';
import 'package:delites/models/tag.dart';

class Recipe {
  String id;
  String name;
  String time;
  double energy;
  String imageUrl;
  RecipeCategory recipeCategory;
  List<Tag> tags;

  Recipe({this.id, this.name, this.time, this.energy, this.imageUrl,
      this.recipeCategory, this.tags});
}
