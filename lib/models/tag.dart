import 'package:delites/models/recipe.dart';

class Tag{
  String id;
  String name;
  String logoUrl;
  List<Recipe> recipes;
  String bgColor;
  Tag({this.id, this.name, this.logoUrl,this.recipes,this.bgColor});
}