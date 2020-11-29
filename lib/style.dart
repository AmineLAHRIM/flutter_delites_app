import 'package:delites/size_config.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const Color appBackgroundColor = Color(0xFFFFF7EC);
  static const Color topBarBackgroundColor = Color(0xFFFFD974);
  static const Color selectedTabBackgroundColor = Color(0xFFFFC442);
  static const Color primary = Color(0xFF64BA02);
  static const Color secondary = Color(0xFFF5F8FD);
  static const Color danger = Color(0xFFE02020);
  static const Color success = Color(0xFF6DD400);
  static const Color warning = Color(0xFFF7B500);
  static const Color info = Color(0xFF0095FF);
  static const Color headlineTextColor = Color(0xFF222B45);
  static const Color subTitleTextColor = Color(0xFF8F9BB3);
  static const Color bg = Color(0xFFFFFFFF);
  static const Color secondaryBg = Color(0xFFF5F8FD);
  static const Color shadow = Color(0xFFEDF1F7);
  static const Color fb = Color(0xFF0041A8);
  static const Color twitter = Color(0xFF42AAFF);
  static const Color google = Color(0xFFF2F8FF);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppTheme.bg,
    backgroundColor: AppTheme.bg,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    headline1: _headline1,
    headline2: _headline2,
    headline3: _headline3,
    headline4: _headline4,
    button: _button,
    subtitle1: _subtitle1,
    subtitle2: _subtitle2,
    bodyText1: _bodyText1,
    bodyText2: _bodyText2,
  );

  static final TextTheme darkTextTheme = TextTheme(
    headline1: _headline1.copyWith(color: Colors.white),
    headline2: _headline2.copyWith(color: Colors.white),
    headline3: _headline3.copyWith(color: Colors.white),
    headline4: _headline4.copyWith(color: Colors.white),
    button: _button.copyWith(color: AppTheme.headlineTextColor),
    subtitle1: _subtitle1.copyWith(color: Colors.white),
    subtitle2: _subtitle2.copyWith(color: Colors.white),
    bodyText1: _bodyText1.copyWith(color: AppTheme.primary),
    bodyText2: _bodyText2.copyWith(color: AppTheme.secondaryBg),
  );

  static final TextStyle _headline1 = TextStyle(
    color: AppTheme.headlineTextColor,
    fontWeight: FontWeight.w900,
    fontFamily: "SFProDisplay",
    fontSize: 4.0 * SizeConfig.textMultiplier,
  );
  static final TextStyle _headline2 = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: "SFProDisplay",
    color: AppTheme.headlineTextColor,
    fontSize: 3.5 * SizeConfig.textMultiplier,
  );
  static final TextStyle _headline3 = TextStyle(
    color: AppTheme.headlineTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: "SFProDisplay",
    fontSize: 3.0 * SizeConfig.textMultiplier,
  );
  static final TextStyle _headline4 = TextStyle(
    color: AppTheme.headlineTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: "SFProDisplay",
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _button = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontFamily: "SFProDisplay",
    fontSize: 2.0 * SizeConfig.textMultiplier,
  );

  static final TextStyle _subtitle1 = TextStyle(
    color: AppTheme.subTitleTextColor,
    fontWeight: FontWeight.w600,
    fontFamily: "SFProDisplay",
    fontSize: 2.0 * SizeConfig.textMultiplier,
  );

  static final TextStyle _subtitle2 = TextStyle(
    color: AppTheme.subTitleTextColor,
    fontFamily: "SFProDisplay",
    fontSize: 2.0 * SizeConfig.textMultiplier,
  );

  static final TextStyle _bodyText1 = TextStyle(
    color: AppTheme.primary,
    fontFamily: "SFProDisplay",
    fontSize: 2 * SizeConfig.textMultiplier,
  );

  static final TextStyle _bodyText2 = TextStyle(
    color: AppTheme.secondary,
    fontFamily: "SFProDisplay",
    fontSize: 2 * SizeConfig.textMultiplier,
  );
}
