import 'package:flutter/material.dart';
import 'package:login_aadi/onboarding/screen_3.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/backgroundColor.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/backgroundImage.dart';
import 'package:login_aadi/widgets/buttonText.dart';
import 'package:login_aadi/widgets/dots/grey_dot.dart';
import 'package:login_aadi/widgets/dots/red_dot.dart';

import '../login/login_screen.dart';


class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Stack(
        children: [
          BackgroundColor(),
          BackgroundImage(),
          Container(
            margin: EdgeInsets.only(top: 30,left: 45),
            child: Image.asset(onboarding2),
          ),
          Container(
            margin: EdgeInsets.only(top: 390),
            height: 350,
            width: 420,
            decoration: BoxDecoration(
              color: thirdColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(110),),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GreyDot(),
                      RedDot(),
                      GreyDot(),
                      GreyDot()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text("Study abroad, now easy!",
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 21.5
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  height: 112,
                  width: 415,
                  child: Column(
                    children: [
                      Text('Abroad medical admission might sound',
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      Text('hectic, but devoyage can help you shortlist',
                        style: TextStyle(
                            color: grey3,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      Text('and guide you not only through the admission',
                        style: TextStyle(
                            color: grey3,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      Text('but throughout the academic course.',
                        style: TextStyle(
                            color: grey3,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 90,
                  width: 415,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left:15),
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(
                                context, PageRouteBuilder(
                                pageBuilder: (_,__,___)=>LoginScreen()));
                          },
                          child: ButtonText(),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 30),
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 65,height: 65,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(CircleBorder()),
                              backgroundColor: MaterialStateProperty.all(secondaryColor),
                            ),
                            child: Container(
                              height: 33,
                              width: 33,
                              decoration: BoxDecoration(
                                  color: thirdColor,
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Icon(Icons.arrow_forward_ios_rounded,
                                color: primaryColor,),
                            ),
                            onPressed: (){
                              Navigator.push(
                                  context, PageRouteBuilder(pageBuilder:(__,_,___)=>ScreenThree()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

