import 'package:delites/items/item_ingredient.dart';
import 'package:delites/models/ingredient.dart';
import 'package:delites/services/Ingredient-service.dart';
import 'package:delites/services/ingredient-category-service.dart';
import 'package:delites/services/tag-service.dart';
import 'package:delites/size_config.dart';
import 'package:delites/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class IngredientsScreen extends StatelessWidget {
  static final String routeName = 'ingredients';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: SizeConfig.screenHeight - MediaQuery.of(context).padding.top,
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 20,
                          child: InkWell(
                            splashFactory: InkRipple.splashFactory,
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 16),
                              child: SvgPicture.asset(
                                'assets/images/icon_back.svg',
                                color: AppTheme.headlineTextColor,
                                width: 32,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 60,
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Fruits',
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 20,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            alignment: Alignment.centerRight,
                            padding: EdgeInsets.only(right: 16),
                            child: SvgPicture.asset(
                              'assets/images/icon_search.svg',
                              color: AppTheme.headlineTextColor,
                              width: 32,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 90,
                child: Tabs(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tabs extends StatelessWidget {
  const Tabs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ingredientService = Provider.of<IngredientService>(context);
    final ingredientCategoryService = Provider.of<IngredientCategoryService>(context);
    final ingredients = ingredientService.findAll();
    final ingredientsCategories = ingredientCategoryService.findAll();

    return DefaultTabController(
      length: ingredientsCategories.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).backgroundColor,
            elevation: 0,
            bottom: PreferredSize(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: AppTheme.shadow,
                    ),
                  ),
                ),
                child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: AppTheme.subTitleTextColor,
                  indicatorColor: AppTheme.primary,
                  labelColor: AppTheme.primary,
                  tabs: [
                    ...ingredientsCategories.map((item) {
                      return Tab(
                        child: Text(
                          item.name,
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      );
                    })
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ...ingredientsCategories.map((item) {
                final currentIngredients = ingredientService.findByingredientCategoryId(item.id);
                return Container(
                  color: AppTheme.secondaryBg,
                  width: double.infinity,
                  height: double.infinity,
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    itemCount: currentIngredients.length,
                    itemBuilder: (ctx, index) => IngredientItem(currentIngredient: currentIngredients[index]),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 220,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 3.5 / 5,
                    ),
                  ),
                );
              }),
            ],
          )),
    );
  }
}
