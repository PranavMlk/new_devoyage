import 'package:flutter/material.dart';
import 'package:login_aadi/onboarding/screen_2.dart';
import 'package:login_aadi/utils/colors/backgroundColor.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/widgets/backgroundImage.dart';
import 'package:login_aadi/widgets/buttonText.dart';
import 'package:login_aadi/widgets/dots/grey_dot.dart';
import 'package:login_aadi/widgets/dots/red_dot.dart';
import '../login/login_screen.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  Screen ? size;

  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      body: Stack(
        children: [
          BackgroundColor(),
          BackgroundImage(),
          Container(
            padding: EdgeInsets.only(top: 30,left: 57),
            height:350,
            child: Image.asset(onboarding1),
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
                      RedDot(),
                      GreyDot(),
                      GreyDot(),
                      GreyDot()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text("Crack your exam confidently",
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
                      Text('Through our well-crafted teaching content',
                        style: TextStyle(
                            color: grey3,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      Text('from videos, clinical case, mcq, train yourself',
                        style: TextStyle(
                            color: grey3,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      Text('for the NEXT and NEET exam confidently.',
                        style: TextStyle(
                            color: grey3,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),
                      ),
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
                          child: ButtonText()
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
                color: primaryColor),
            ),
            onPressed: (){
              Navigator.push(context, PageRouteBuilder(
                  pageBuilder: (_,__,___)=> ScreenTwo()));
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




