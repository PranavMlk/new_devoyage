import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_aadi/onboarding/screen_1.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/utils/avatar.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Screen ? size;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            () =>
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => ScreenOne()))

    );
  }

  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(companylogo),
          ),
          Container(
            margin: EdgeInsets.only(top: 275),
            padding: EdgeInsets.only(bottom: 20),
            child: Text('Devoyage Pvt Ltd',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: primaryColor
              ),
            ),
          ),
        ],
      ),
    );
  }
}