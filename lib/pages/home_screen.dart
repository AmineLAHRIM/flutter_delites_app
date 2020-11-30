import 'package:delites/pages/forget_password_screen.dart';
import 'package:delites/pages/register_screen.dart';
import 'package:delites/pages/verification_screen.dart';
import 'package:delites/size_config.dart';
import 'package:delites/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: width,
          height: height - MediaQuery.of(context).padding.top,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 18,
                child: FractionallySizedBox(
                  alignment: Alignment(0, 0.1),
                  heightFactor: 0.6,
                  widthFactor: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 60,
                        child: Container(
                          child: SvgPicture.asset(
                            'assets/images/Logo.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 24,
                        child: Text(
                          "Delites",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 14,
                child: FractionallySizedBox(
                  alignment: Alignment.topCenter,
                  heightFactor: 0.57,
                  widthFactor: 1,
                  child: Column(
                    children: [
                      Text(
                        "Welcome back",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        "Sign in to continue",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 18,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        flex: 41,
                        child: Card(
                          margin: EdgeInsets.fromLTRB(16, 4, 16, 4),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side:
                                BorderSide(color: AppTheme.shadow, width: 2.0),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email or Phone Number',
                                  hintStyle:
                                      Theme.of(context).textTheme.subtitle2),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 41,
                        child: Card(
                          margin: EdgeInsets.fromLTRB(16, 2, 16, 2),
                          elevation: 0,
                          shadowColor: AppTheme.shadow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side:
                                BorderSide(color: AppTheme.shadow, width: 2.0),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle:
                                    Theme.of(context).textTheme.subtitle2,
                              ),
                              obscureText: true,
                              enableSuggestions: false,
                              autocorrect: false,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 20,
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(ForgetPasswordScreen.routeName);
                            },
                            child: Text(
                              "Forgot password",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 17,
                child: Container(
                  margin: EdgeInsets.fromLTRB(16, 40, 16, 40),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(VerificationScreen.routeName);
                    },
                    color: AppTheme.primary,
                    elevation: 2,
                    textColor: Colors.white,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Sign In',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Expanded(
                flex: 12,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: double.infinity,
                        margin:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/line.svg',
                              width: width,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 16),
                              color: Theme.of(context).scaffoldBackgroundColor,
                              child: Text(
                                'Or',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 82),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppTheme.fb,
                              child: SvgPicture.asset('assets/images/icon_fb.svg'),
                            ),
                            CircleAvatar(
                              backgroundColor: AppTheme.twitter,
                              child:
                                  SvgPicture.asset('assets/images/icon_twitter.svg'),
                            ),
                            CircleAvatar(
                              backgroundColor: AppTheme.google,
                              child:
                                  SvgPicture.asset('assets/images/icon_google.svg'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 15,
                child: Container(
                  alignment: Alignment(0, 0.2),
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: Text(
                          "You don't have an account?",
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(RegisterScreen.routeName);
                          },
                          child: Text(
                            "Sign Up",
                            style: Theme.of(context).textTheme.bodyText1,
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
      ),
    );
  }
}
