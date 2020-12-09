import 'package:delites/pages/ingredients_screen.dart';
import 'package:delites/services/Ingredient-service.dart';
import 'package:delites/services/ingredient-category-service.dart';
import 'package:delites/services/recipe-category-service.dart';
import 'package:delites/services/tag-service.dart';
import 'package:provider/provider.dart';
import 'package:delites/pages/forget_password_screen.dart';
import 'package:delites/pages/home_screen.dart';
import 'package:delites/pages/welcome_screen.dart';
import 'package:delites/pages/register_screen.dart';
import 'package:delites/pages/reset_password_screen.dart';
import 'package:delites/pages/verification_screen.dart';
import 'package:delites/services/recipe-service.dart';
import 'package:delites/size_config.dart';
import 'package:delites/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MultiProvider(
          providers: [
            ChangeNotifierProvider.value(
              value: RecipeService(),
            ),
            ChangeNotifierProvider.value(
              value: RecipeCategoryService(),
            ),
            ChangeNotifierProvider.value(
              value: TagService(),
            ),
            ChangeNotifierProvider.value(
              value: IngredientCategoryService(),
            ),
            ChangeNotifierProvider.value(
              value: IngredientService(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            home: WelcomeScreen(),
            routes: {
              WelcomeScreen.routeName: (context) => WelcomeScreen(),
              ForgetPasswordScreen.routeName: (context) =>
                  ForgetPasswordScreen(),
              RegisterScreen.routeName: (context) => RegisterScreen(),
              ResetPasswordScreen.routeName: (context) => ResetPasswordScreen(),
              VerificationScreen.routeName: (context) => VerificationScreen(),
              HomeScreen.routeName: (context) => HomeScreen(),
              IngredientsScreen.routeName: (context) => IngredientsScreen(),
            },
          ),
        );
      });
    });
  }
}
