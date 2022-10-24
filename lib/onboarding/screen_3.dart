import 'package:flutter/material.dart';
import 'package:login_aadi/onboarding/screen_4.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/backgroundColor.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/backgroundImage.dart';
import 'package:login_aadi/widgets/dots/grey_dot.dart';
import 'package:login_aadi/widgets/dots/red_dot.dart';
import '../widgets/skipButton.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: primaryColor,
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
                      child: Image.asset(onboarding3),
                    ),
                    SizedBox(
                      width: size?.wp(6),
                    ),
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
                            RedDot(),
                            SizedBox(width: size?.wp(2)),
                            GreyDot()
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: size?.hp(3),),
                          Container(
                            alignment: Alignment.center,
                            height: size?.hp(3),
                            width: size?.wp(70),
                            child: Text("Medico's mutual friend",
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
                        alignment: Alignment.center,
                        height: size?.hp(14),
                        width: size?.wp(87),
                        child: Column(
                          children: [
                            Text('Keep all your medico friend and colleagues in',
                              style: TextStyle(
                                  color: grey3,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('a single hub, connect with them in our in-app',
                              style: TextStyle(
                                  color: grey3,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('messenger on the go.',
                              style: TextStyle(
                                  color: grey3,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size?.hp(4),),
                      Row(
                        children: [
                          SizedBox(width: size?.wp(4),),
                          SkipButton(),
                          SizedBox(width: size?.wp(57),),
                             Container(
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
                                      context, PageRouteBuilder(pageBuilder: (_,__,___)=>ScreenFour()));
                                },
                              ),
                            ),
                        ],
                      ),
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




