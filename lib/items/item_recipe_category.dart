import 'package:cached_network_image/cached_network_image.dart';
import 'package:delites/models/recipe.dart';
import 'package:delites/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemRecipeCategory extends StatefulWidget {
  const ItemRecipeCategory({
    Key key,
    @required this.currentRecipe,
  }) : super(key: key);

  final Recipe currentRecipe;

  @override
  _ItemRecipeCategoryState createState() => _ItemRecipeCategoryState();
}

class _ItemRecipeCategoryState extends State<ItemRecipeCategory> {
  @override
  Widget build(BuildContext context) {
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
                      imageUrl: widget.currentRecipe.imageUrl,
                      placeholder: (ctx, url) => Center(child: CircularProgressIndicator()),
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
                                widget.currentRecipe.name,
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
                                            widget.currentRecipe.time + ' mins',
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
                                            widget.currentRecipe.energy.toInt().toString() + ' kcal',
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
                          widget.currentRecipe.isFavourite = !widget.currentRecipe.isFavourite;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        alignment: Alignment.center,
                        child: FractionallySizedBox(
                          heightFactor: 0.7,
                          child: widget.currentRecipe.isFavourite
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
  }
}