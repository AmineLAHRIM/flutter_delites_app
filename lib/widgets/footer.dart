import 'package:delites/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
        child: Row(
          children: [
            Expanded(
              flex: 20,
              child: Ink(
                child: Column(
                  children: [
                    Expanded(
                      flex: 70,
                      child: SvgPicture.asset(
                        'assets/images/icon_recipes_fill.svg',
                      ),
                    ),
                    Expanded(
                      flex: 30,
                      child: FittedBox(
                        alignment: Alignment.topCenter,
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Recipes',
                          style: Theme.of(context).textTheme.subtitle2.copyWith(color: AppTheme.primary),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 20,
              child: Column(
                children: [
                  Expanded(
                    flex: 70,
                    child: SvgPicture.asset(
                      'assets/images/icon_search_footer.svg',
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: FittedBox(
                      alignment: Alignment.topCenter,
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Search',
                        style: Theme.of(context).textTheme.subtitle2.copyWith(color: AppTheme.footertext),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 20,
              child: Column(
                children: [
                  Expanded(
                    flex: 70,
                    child: SvgPicture.asset(
                      'assets/images/icon_cart.svg',
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: FittedBox(
                      alignment: Alignment.topCenter,
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Cart',
                        style: Theme.of(context).textTheme.subtitle2.copyWith(color: AppTheme.footertext),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 20,
              child: Column(
                children: [
                  Expanded(
                    flex: 70,
                    child: SvgPicture.asset(
                      'assets/images/icon_fav2.svg',
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: FittedBox(
                      alignment: Alignment.topCenter,
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Favourites',
                        style: Theme.of(context).textTheme.subtitle2.copyWith(color: AppTheme.footertext),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 20,
              child: Column(
                children: [
                  Expanded(
                    flex: 70,
                    child: SvgPicture.asset(
                      'assets/images/icon_profile.svg',
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: FittedBox(
                      alignment: Alignment.topCenter,
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Profile',
                        style: Theme.of(context).textTheme.subtitle2.copyWith(color: AppTheme.footertext),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}