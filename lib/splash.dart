import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_aadi/login/login_screen.dart';
import 'package:login_aadi/onboarding/screen_1.dart';
import 'package:login_aadi/onboarding/screen_2.dart';
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
            ()=> Navigator.pushReplacement(
                context, PageRouteBuilder(
                pageBuilder: (_,__,___)=>ScreenOne()))

    );

  }

  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              Container(
                height: size?.hp(7),
                width: size?.wp(86),
                child: Image.asset(companylogo),
              ),
              Spacer(),
              Container(
                height: size?.hp(3),
                child: Text('edvoyage Pvt Ltd',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: primaryColor
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