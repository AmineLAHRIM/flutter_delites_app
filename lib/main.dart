import 'package:delites/pages/forget_password_screen.dart';
import 'package:delites/pages/home_screen.dart';
import 'package:delites/pages/register_screen.dart';
import 'package:delites/pages/reset_password_screen.dart';
import 'package:delites/pages/verification_screen.dart';
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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          home: HomeScreen(),
          routes: {
            HomeScreen.routeName: (context) => HomeScreen(),
            ForgetPasswordScreen.routeName: (context) => ForgetPasswordScreen(),
            RegisterScreen.routeName: (context) => RegisterScreen(),
            ResetPasswordScreen.routeName: (context) => ResetPasswordScreen(),
            VerificationScreen.routeName: (context) => VerificationScreen(),
          },
        );
      });
    });
  }
}
