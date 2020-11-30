import 'package:delites/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatelessWidget {
  static final String routeName='register';

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
            children: [
              Expanded(
                flex: 10,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: InkResponse(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        child: SvgPicture.asset(
                          'assets/images/icon_back.svg',
                          width: 34,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 20,
                child: Container(
                  alignment: Alignment.center,
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    heightFactor: 0.6,
                    child: Column(
                      children: [
                        Text(
                          'Sign Up',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(32, 16, 32, 0),
                          child: Text(
                            'Please type your information below',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(height: 1.5),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 55,
                      child: Card(
                        margin: EdgeInsets.fromLTRB(16, 4, 16, 4),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: AppTheme.shadow, width: 2.0),
                        ),
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Full Name',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .subtitle2),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      child: Card(
                        margin: EdgeInsets.fromLTRB(16, 4, 16, 4),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: AppTheme.shadow, width: 2.0),
                        ),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .subtitle2),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      child: Card(
                        margin: EdgeInsets.fromLTRB(16, 4, 16, 4),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: AppTheme.shadow, width: 2.0),
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 85,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                alignment: Alignment.center,
                                padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .subtitle2),
                                  obscureText: true,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 15,
                              child: Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                width: double.infinity,
                                child: SvgPicture.asset(
                                  'assets/images/icon_hide_password.svg',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      child: Card(
                        margin: EdgeInsets.fromLTRB(16, 4, 16, 4),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: AppTheme.shadow, width: 2.0),
                        ),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '+1 (000)00 000 0000',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .subtitle2),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      child: Card(
                        margin: EdgeInsets.fromLTRB(16, 4, 16, 4),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: AppTheme.shadow, width: 2.0),
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 85,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                alignment: Alignment.center,
                                padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Date of Birth',
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .subtitle2),
                                  obscureText: true,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 15,
                              child: Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                width: double.infinity,
                                child: SvgPicture.asset(
                                  'assets/images/icon_calendar.svg',
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
              Expanded(
                flex: 10,
                child: FractionallySizedBox(
                  widthFactor: 1,
                  heightFactor: 0.7,
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(16, 4, 16, 4),
                    child: RaisedButton(
                      onPressed: () {},
                      color: AppTheme.primary,
                      elevation: 2,
                      textColor: Colors.white,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          'Send',
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
              ),
              Expanded(
                flex: 15,
                child: Container(
                  alignment: Alignment(0,0.2),
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
                        child: Text(
                          "Sign Up",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
