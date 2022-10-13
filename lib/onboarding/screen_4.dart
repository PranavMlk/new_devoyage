import 'package:flutter/material.dart';
import 'package:login_aadi/login/login_screen.dart';
import 'package:login_aadi/sign%20up/sign_up.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/backgroundColor.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/backgroundImage.dart';
import 'package:login_aadi/widgets/dots/grey_dot.dart';
import 'package:login_aadi/widgets/dots/red_dot.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
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
            margin: EdgeInsets.only(top: 30,left: 55),
            child: Image.asset(onboarding4),
          ),
          Container(
            margin: EdgeInsets.only(top: 390),
            height: 350,
            width: 420,
            decoration: BoxDecoration(
              color: thirdColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(110),),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 410),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GreyDot(),
                    GreyDot(),
                    GreyDot(),
                    RedDot(),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Interact with professionals",
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 21
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text('Get your questions answered by some of the ',
                      style: TextStyle(
                          color: grey3,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Text('best lectures or doctors around the globe',
                      style: TextStyle(
                          color: grey3,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Text('through the medico hub CAVITY.post your',
                      style: TextStyle(
                          color: grey3,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Text('questions or doubts and engage with ',
                      style: TextStyle(
                          color: grey3,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    Text('professionals.',
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
                width: 350,
                height: 40,
                margin: EdgeInsets.only(top:30),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(
                        context, PageRouteBuilder(
                        pageBuilder: (_,__,___)=>SignUp()));
                  },
                  child: Text('Get Started',
                    style: TextStyle(
                        fontSize: 15,
                        color: thirdColor,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}




