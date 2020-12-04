import 'package:cached_network_image/cached_network_image.dart';
import 'package:delites/models/recipe-category.dart';
import 'package:delites/models/recipe.dart';
import 'package:delites/models/tag.dart';
import 'package:delites/services/recipe-category-service.dart';
import 'package:delites/services/recipe-service.dart';
import 'package:delites/services/tag-service.dart';
import 'package:delites/size_config.dart';
import 'package:delites/style.dart';
import 'package:delites/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: OrientationBuilder(builder: (ctx, orientation) {
        return orientation == Orientation.landscape
            ? SingleChildScrollView(
                child: Home(),
              )
            : Home();
      }),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tagService = Provider.of<TagService>(context, listen: false);
    final recipeService = Provider.of<RecipeService>(context, listen: false);
    final recipeCategoryService = Provider.of<RecipeCategoryService>(context, listen: false);
    final List<Tag> tags = tagService.findAll();
    final List<Recipe> recipes = recipeService.findAll();
    final List<RecipeCategory> recipeCategories = recipeCategoryService.findAll();
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight - MediaQuery.of(context).padding.top,
        child: Column(
          children: [
            Expanded(
              flex: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  border: Border(
                    bottom: BorderSide(width: 1, color: AppTheme.shadow),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 50,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: FractionallySizedBox(
                                widthFactor: 1,
                                heightFactor: 0.75,
                                child: Card(
                                  margin: EdgeInsets.fromLTRB(16, 4, 16, 4),
                                  elevation: 0,
                                  color: AppTheme.secondaryBg,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: TextField(
                                            decoration: InputDecoration(border: InputBorder.none, hintText: 'Find something...', hintStyle: Theme.of(context).textTheme.subtitle2),
                                          ),
                                        ),
                                        Container(
                                          height: double.infinity,
                                          child: FractionallySizedBox(
                                            heightFactor: 0.8,
                                            child: Card(
                                              color: AppTheme.primary,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: AspectRatio(
                                                aspectRatio: 1 / 1,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/icon_search.svg',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 50,
                      child: Container(
                        child: ListView.builder(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          scrollDirection: Axis.horizontal,
                          itemCount: tags.length,
                          itemBuilder: (ctx, index) => Container(
                            width: 120,
                            child: FractionallySizedBox(
                              heightFactor: 0.6,
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                elevation: 0,
                                color: Color(int.parse('0xFF' + tags[index].bgColor.toString())),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: FractionallySizedBox(
                                        widthFactor: 0.7,
                                        heightFactor: 0.4,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Flexible(
                                              flex: 40,
                                              child: Container(
                                                child: CachedNetworkImage(
                                                  imageUrl: tags[index].logoUrl,
                                                  placeholder: (ctx, url) => CircularProgressIndicator(),
                                                  errorWidget: (context, url, error) => Icon(Icons.error),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              flex: 60,
                                              child: Container(
                                                child: FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    tags[index].name,
                                                    style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          splashFactory: InkRipple.splashFactory,
                                          onTap: () => null,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 65,
              child: Container(
                color: AppTheme.secondaryBg,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 180,
                        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
                        child: Card(
                          elevation: 4,
                          clipBehavior: Clip.antiAlias,
                          shadowColor: AppTheme.borderCard,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: CachedNetworkImage(
                                  imageUrl: 'https://boostifly.com/uiux/delites/food_menu.png',
                                  placeholder: (ctx, url) => CircularProgressIndicator(),
                                  errorWidget: (context, url, error) => Icon(Icons.error),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned.fill(
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashFactory: InkRipple.splashFactory,
                                    onTap: () => null,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        margin: EdgeInsets.only(top: 32),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 10,
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 60,
                                      child: Container(
                                        height: double.infinity,
                                        width: double.infinity,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Take Your Pick',
                                          style: Theme.of(context).textTheme.headline3,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 40,
                                      child: Container(
                                        height: double.infinity,
                                        width: double.infinity,
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'View All',
                                          style: Theme.of(context).textTheme.bodyText1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 90,
                              child: Container(
                                margin: EdgeInsets.only(top: 8),
                                child: ListView.builder(
                                  padding: EdgeInsets.only(left: 16),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: recipeService.findByRecipeCategoryId('recipe1').length,
                                  itemBuilder: (ctx, index) {
                                    List<Recipe> foundedRecipes = recipeService.findByRecipeCategoryId('recipe1');
                                    return Container(
                                      width: 150,
                                      height: double.infinity,
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        shadowColor: AppTheme.borderCard,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: AppTheme.borderCard, width: 1.5)),
                                        child: Stack(
                                          children: [
                                            Container(
                                              child: Column(
                                                children: [
                                                  Expanded(
                                                    flex: 65,
                                                    child: Container(
                                                      width: double.infinity,
                                                      child: CachedNetworkImage(
                                                        imageUrl: foundedRecipes[index].imageUrl,
                                                        placeholder: (ctx, url) => CircularProgressIndicator(),
                                                        errorWidget: (context, url, error) => Icon(Icons.error),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 18,
                                                    child: Container(
                                                      width: double.infinity,
                                                      alignment: Alignment.centerLeft,
                                                      margin: EdgeInsets.only(left: 10),
                                                      child: Text(
                                                        foundedRecipes[index].name,
                                                        style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.normal),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 16,
                                                    child: Container(
                                                      width: double.infinity,
                                                      margin: EdgeInsets.only(left: 10, bottom: 8),
                                                      child: FractionallySizedBox(
                                                        widthFactor: 0.8,
                                                        alignment: Alignment.centerLeft,
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Flexible(
                                                              flex: 45,
                                                              child: Container(
                                                                height: double.infinity,
                                                                child: FittedBox(
                                                                  alignment: Alignment.centerLeft,
                                                                  fit: BoxFit.scaleDown,
                                                                  child: Text(
                                                                    foundedRecipes[index].time + ' mins',
                                                                    style: Theme.of(context).textTheme.subtitle2,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 10,
                                                              child: Container(
                                                                height: double.infinity,
                                                                child: FractionallySizedBox(
                                                                  heightFactor: 0.2,
                                                                  child: AspectRatio(
                                                                    aspectRatio: 1 / 1,
                                                                    child: SvgPicture.asset('assets/images/oval.svg'),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 45,
                                                              child: Container(
                                                                height: double.infinity,
                                                                child: FittedBox(
                                                                  alignment: Alignment.centerLeft,
                                                                  fit: BoxFit.scaleDown,
                                                                  child: Text(
                                                                    foundedRecipes[index].energy.toInt().toString() + ' kcal',
                                                                    style: Theme.of(context).textTheme.subtitle2,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned.fill(
                                              child: Material(
                                                color: Colors.transparent,
                                                child: InkWell(
                                                  splashFactory: InkRipple.splashFactory,
                                                  splashColor: AppTheme.shadow.withAlpha(100),
                                                  onTap: () => null,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 16),
                        child: ListRecipeCategories(recipeCategories: recipeCategories, recipeService: recipeService),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}

class ListRecipeCategories extends StatelessWidget {
  const ListRecipeCategories({
    Key key,
    @required this.recipeCategories,
    @required this.recipeService,
  }) : super(key: key);

  final List<RecipeCategory> recipeCategories;
  final RecipeService recipeService;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(),
      ...(recipeCategories.map((value) {
        if (value.id == 'recipe1') {
          return Container();
        }
        return ItemRecipeCategory(currentRecipeCategory: value, recipeService: recipeService);
      })),
    ]);
  }
}

class ItemRecipeCategory extends StatefulWidget {
  const ItemRecipeCategory({
    Key key,
    @required this.currentRecipeCategory,
    @required this.recipeService,
  }) : super(key: key);

  final RecipeCategory currentRecipeCategory;
  final RecipeService recipeService;

  @override
  _ItemRecipeCategoryState createState() => _ItemRecipeCategoryState();
}

class _ItemRecipeCategoryState extends State<ItemRecipeCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 32),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  flex: 60,
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.currentRecipeCategory.name,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ),
                Expanded(
                  flex: 40,
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.centerRight,
                    child: Text(
                      'View All',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          widget.currentRecipeCategory.decription.isEmpty
              ? Container()
              : Container(
                  margin: EdgeInsets.fromLTRB(16, 8, 16, 0),
                  width: double.infinity,
                  child: Text(
                    widget.currentRecipeCategory.decription,
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.left,
                  ),
                ),
          Container(
            width: double.infinity,
            height: 180,
            child: Container(
              margin: EdgeInsets.only(top: 8),
              child: ListView.builder(
                padding: EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                itemCount: widget.recipeService.findByRecipeCategoryId(widget.currentRecipeCategory.id).length,
                itemBuilder: (ctx, index) {
                  List<Recipe> foundedRecipes = widget.recipeService.findByRecipeCategoryId(widget.currentRecipeCategory.id);
                  return Container(
                    width: 280,
                    height: double.infinity,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shadowColor: AppTheme.borderCard,
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: AppTheme.borderCard, width: 1.5)),
                      child: Stack(
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: CachedNetworkImage(
                                    imageUrl: foundedRecipes[index].imageUrl,
                                    placeholder: (ctx, url) => CircularProgressIndicator(),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  alignment: Alignment.bottomLeft,
                                  child: FractionallySizedBox(
                                    widthFactor: 1,
                                    heightFactor: 0.4,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 55,
                                          child: Container(
                                            width: double.infinity,
                                            alignment: Alignment.centerLeft,
                                            margin: EdgeInsets.only(left: 10),
                                            child: Text(
                                              foundedRecipes[index].name,
                                              style: Theme.of(context).textTheme.headline3.copyWith(color: Theme.of(context).scaffoldBackgroundColor),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 45,
                                          child: Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.only(left: 10, bottom: 8),
                                            child: FractionallySizedBox(
                                              widthFactor: 0.5,
                                              alignment: Alignment.centerLeft,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Flexible(
                                                    flex: 45,
                                                    child: Container(
                                                      height: double.infinity,
                                                      child: FittedBox(
                                                        alignment: Alignment.centerLeft,
                                                        fit: BoxFit.scaleDown,
                                                        child: Text(
                                                          foundedRecipes[index].time + ' mins',
                                                          style: Theme.of(context).textTheme.subtitle2.copyWith(color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.75)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 10,
                                                    child: Container(
                                                      height: double.infinity,
                                                      child: FractionallySizedBox(
                                                        heightFactor: 0.2,
                                                        child: AspectRatio(
                                                          aspectRatio: 1 / 1,
                                                          child: SvgPicture.asset(
                                                            'assets/images/oval.svg',
                                                            color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.75),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 45,
                                                    child: Container(
                                                      height: double.infinity,
                                                      child: FittedBox(
                                                        alignment: Alignment.centerLeft,
                                                        fit: BoxFit.scaleDown,
                                                        child: Text(
                                                          foundedRecipes[index].energy.toInt().toString() + ' kcal',
                                                          style: Theme.of(context).textTheme.subtitle2.copyWith(color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.75)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned.fill(
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                splashFactory: InkRipple.splashFactory,
                                splashColor: AppTheme.shadow.withAlpha(100),
                                onTap: () => null,
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
                            child: FractionallySizedBox(
                              heightFactor: 0.25,
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: CircleAvatar(
                                  backgroundColor: AppTheme.secondaryBg.withOpacity(0.25),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        foundedRecipes[index].isFavourite = !foundedRecipes[index].isFavourite;
                                      });
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      alignment: Alignment.center,
                                      child: FractionallySizedBox(
                                        heightFactor: 0.7,
                                        child: foundedRecipes[index].isFavourite
                                            ? SvgPicture.asset(
                                                'assets/images/icon_fav2_fill.svg',
                                              )
                                            : SvgPicture.asset(
                                                'assets/images/icon_fav2.svg',
                                              ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
