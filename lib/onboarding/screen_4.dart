import 'package:flutter/material.dart';
import 'package:login_aadi/login/login_screen.dart';
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
      body: Center(
        child: Stack(
          children: [
            BackgroundColor(),
            BackgroundImage(),
            Column(
              children: [
                SizedBox(
                  height: size?.hp(4),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size?.wp(6),
                    ),
                    Container(
                      height:size?.hp(42),
                      width: size?.wp(80),
                      child: Image.asset(onboarding4),
                    ),
                    SizedBox(
                      width: size?.wp(6),
                    )
                  ],
                ),
                SizedBox(
                  height: size?.hp(8),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: size?.hp(57),
                ),
                Container(
                  height: size?.hp(43),
                  width: size?.wp(100),
                  decoration: BoxDecoration(
                    color: thirdColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(110),),
                  ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size?.hp(3),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GreyDot(),
                            SizedBox(width: size?.wp(2)),
                            GreyDot(),
                            SizedBox(width: size?.wp(2)),
                            GreyDot(),
                            SizedBox(width: size?.wp(2)),
                            RedDot(),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: size?.hp(3),),
                          Container(
                            child: Text("Interact with professionals",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.5
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size?.hp(3),),
                      Container(
                        child: Column(
                          children: [
                            Text('Get your questions answered by some of the ',
                              style: TextStyle(
                                  color: grey3,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('best lectures or doctors around the globe',
                              style: TextStyle(
                                  color: grey3,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('through the medico hub CAVITY.post your',
                              style: TextStyle(
                                  color: grey3,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('questions or doubts and engage with ',
                              style: TextStyle(
                                  color: grey3,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('professionals.',
                              style: TextStyle(
                                  color: grey3,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size?.hp(7),),
                      Container(
                        width: size?.wp(87),
                        height: size?.hp(5),
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(
                                context, PageRouteBuilder(
                                pageBuilder: (_,__,___)=>LoginScreen()));
                          },
                          child: Text('Get Started',
                            style: TextStyle(
                                fontSize: 14,
                                color: thirdColor,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}




