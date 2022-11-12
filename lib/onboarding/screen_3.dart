import 'package:flutter/material.dart';
import 'package:login_aadi/onboarding/screen_4.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/backgroundColor.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/backgroundImage.dart';
import 'package:login_aadi/widgets/dots/grey_dot.dart';
import 'package:login_aadi/widgets/dots/red_dot.dart';
import 'package:login_aadi/widgets/onboarding_button.dart';
import 'package:login_aadi/widgets/onboardingbold.dart';
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
                      SizedBox(height: size?.hp(3),),
                      BoldText(text: "Medico's mutual friend"),
                      SizedBox(height: size?.hp(3),),
                      Container(
                        alignment: Alignment.center,
                        height: size?.hp(14),
                        width: size?.wp(87),
                        child: Column(
                          children: [
                            LateBold(text: 'Keep all your medico friend and colleagues in'),
                            LateBold(text: 'a single hub, connect with them in our in-app'),
                            LateBold(text: 'messenger on the go.')
                          ],
                        ),
                      ),
                      SizedBox(height: size?.hp(4),),
                      Row(
                        children: [
                          SizedBox(width: size?.wp(4),),
                          SkipButton(),
                          SizedBox(width: size?.wp(57),),
                          OnboardingButton(action: (){
                            Navigator.push(
                                context, PageRouteBuilder(
                                pageBuilder: (_,__,___)=>ScreenFour()));
                          })
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




