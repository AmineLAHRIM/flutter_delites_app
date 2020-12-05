import 'package:cached_network_image/cached_network_image.dart';
import 'package:delites/models/ingredient.dart';
import 'package:delites/size_config.dart';
import 'package:delites/style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IngredientItem extends StatefulWidget {
  const IngredientItem({
    Key key,
    @required this.currentIngredient,
  }) : super(key: key);

  final Ingredient currentIngredient;

  @override
  _IngredientItemState createState() => _IngredientItemState();
}

class _IngredientItemState extends State<IngredientItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: AppTheme.borderCard, width: 1.5),
      ),
      child: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  flex: 60,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: CachedNetworkImage(
                        imageUrl: widget.currentIngredient.imageUrl,
                        placeholder: (context, url) => Center(
                          child: CircularProgressIndicator(),
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 40,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 30,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                widget.currentIngredient.name,
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 30,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Text(
                              'Price per ' + describeEnum(widget.currentIngredient.unit).toLowerCase(),
                              style: Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 1.8 * SizeConfig.textMultiplier),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 30,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            alignment: Alignment.bottomLeft,
                            child: FractionallySizedBox(
                              widthFactor: 0.7,
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 55,
                                    child: Container(
                                      height: double.infinity,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          '\$'+widget.currentIngredient.promoPrice.toString(),
                                          style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.bold,fontSize: 2.5 * SizeConfig.textMultiplier),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 45,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 4),
                                      width: double.infinity,
                                      height: double.infinity,
                                      alignment: Alignment.topLeft,
                                      child: FittedBox(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          '\$'+widget.currentIngredient.price.toString(),
                                          style: Theme.of(context).textTheme.subtitle2.copyWith(decoration: TextDecoration.lineThrough),
                                        ),
                                      ),
                                    ),
                                  )
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
            alignment: Alignment.topRight,
            child: FractionallySizedBox(
              widthFactor: 0.3,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.fromLTRB(0, 8, 8, 0),
                  color: AppTheme.headlineTextColor.withOpacity(0.20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    splashFactory: InkRipple.splashFactory,
                    onTap: () {
                      setState(() {
                        widget.currentIngredient.isFavourite = !widget.currentIngredient.isFavourite;
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      padding: EdgeInsets.all(10),
                      child: widget.currentIngredient.isFavourite ? SvgPicture.asset('assets/images/icon_fav_fill.svg') : SvgPicture.asset('assets/images/icon_fav_blank.svg'),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.bottomRight,
            child: FractionallySizedBox(
              widthFactor: 0.3,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.fromLTRB(0, 0, 8, 8),
                  color: AppTheme.headlineTextColor.withOpacity(0.20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    splashFactory: InkRipple.splashFactory,
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: AppTheme.primary,
                      padding: EdgeInsets.all(10),
                      child: SvgPicture.asset('assets/images/icon_add_to_cart.svg'),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
