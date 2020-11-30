import 'dart:async';

import 'package:delites/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerificationScreen extends StatefulWidget {
  static final String routeName = 'verification';
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  int timer = 0;
  Duration duration = new Duration(seconds: 1);

  @override
  void initState() {
    new Timer.periodic(duration, (_) {
      setState(() {
        print('timerini' + timer.toString());
        if (timer == 59) {
          timer = 0;
        }
        timer++;
      });
    });

    super.initState();
  }

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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Verification',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(32, 16, 32, 0),
                          child: Text(
                            'We have just sent your email an OTP, please enter below to verify',
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
                  width: double.infinity,
                  height: double.infinity,
                  child: FractionallySizedBox(
                    heightFactor: 1,
                    widthFactor: 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 25,
                          child: AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Container(
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color: AppTheme.shadow, width: 2.0),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Container(
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: '',
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .subtitle2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 25,
                          child: AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Container(
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color: AppTheme.shadow, width: 2.0),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Container(
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: '',
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .subtitle2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 25,
                          child: AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Container(
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color: AppTheme.shadow, width: 2.0),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Container(
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: '',
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .subtitle2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 25,
                          child: AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Container(
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color: AppTheme.shadow, width: 2.0),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Container(
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: '',
                                          hintStyle: Theme.of(context)
                                              .textTheme
                                              .subtitle2),
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
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      'Resend on 00:' + timer.toString().padLeft(2, '0'),
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
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
                          'Complete',
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
                flex: 35,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
