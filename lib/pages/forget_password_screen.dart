import 'package:delites/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordScreen extends StatelessWidget {

  static final String routeName='forget-password';

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
                          'assets/images/back.svg',
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Forgot Password',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(32, 16, 32, 0),
                          child: Text(
                            'Please type your email or phone number below and we can help you reset password',
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
                flex: 10,
                child: Container(
                  alignment: Alignment(0, -0.4),
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    heightFactor: 0.7,
                    child: Card(
                      margin: EdgeInsets.fromLTRB(16, 4, 16, 4),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: AppTheme.shadow, width: 2.0),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 16),
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
              ),
              Expanded(
                flex: 40,
                child: Container(
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
