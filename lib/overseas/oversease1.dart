import 'package:flutter/material.dart';
import 'package:login_aadi/overseas/overseas2.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/widgets/dots/blackdot.dart';
import '../utils/responsive.dart';

class OverseasOne extends StatefulWidget {
  const OverseasOne({Key? key}) : super(key: key);

  @override
  State<OverseasOne> createState() => _OverseasOneState();
}

class _OverseasOneState extends State<OverseasOne> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
        child:Scaffold(
          backgroundColor: thirdColor,
          appBar: AppBar(
            backgroundColor: thirdColor,
            elevation: .2,
            title: Text('Study Abroad',
            textScaleFactor: 1.3,
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
            ),
          ),
          body: Column(
            children: [
              SizedBox(height: size?.hp(1.5),),
              Center(
                child: Container(
                  height: size?.hp(29),
                  width: size?.wp(53),
                  child: Image.asset(overseas1),
                ),
              ),
              SizedBox(height: size?.hp(4),),
              Text('Overseas Study Expert',
                textScaleFactor: 1.4,
                style: TextStyle(
                  color:primaryColor,
                  fontWeight: FontWeight.bold,
                  fontFamily:'Roboto',
              ),
              ),
              SizedBox(height: size?.hp(4),),
              Row(
                children: [
                  SizedBox(width: size?.wp(15),),
                  Container(
                    alignment: Alignment.center,
                    width: size?.wp(79),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            BlackDot(),
                            SizedBox(width: size?.wp(3),),
                            Text('Planning to study MBBS abroad?',
                              textScaleFactor: 0.97,
                              style: TextStyle(
                                color: fourthColor,
                                fontWeight: FontWeight.w500

                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size?.hp(2),),
                        Row(
                          children: [
                            BlackDot(),
                            SizedBox(width: size?.wp(3),),
                            Text('But unsure which university would be',
                              textScaleFactor: .97,
                              style: TextStyle(
                                color: fourthColor,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: size?.wp(4.2),),
                            Text('the best-fit for you?',
                              textScaleFactor: .97,
                              style: TextStyle(
                                color: fourthColor,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size?.hp(2),),
                        Row(
                          children: [
                            BlackDot(),
                            SizedBox(width: size?.wp(3),),
                            Text('Devoyage experts will guide on every',
                              textScaleFactor: .97,
                              style: TextStyle(
                                color: fourthColor,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: size?.wp(4.2),),
                            Text('step in your journey.',
                              textScaleFactor: .97,
                              style: TextStyle(
                                color: fourthColor,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: size?.hp(2),),
                        Row(
                          children: [
                            BlackDot(),
                            SizedBox(width: size?.wp(3),),
                            Text('Start with our course finder and',
                              textScaleFactor: .97,
                              style: TextStyle(
                                color: fourthColor,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: size?.wp(4.2),),
                            Text('schedule a slot with a counsellor',
                              textScaleFactor: .97,
                              style: TextStyle(
                                color: fourthColor,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size?.hp(4),),
              Container(
                width: size?.wp(53),
                height: size?.hp(5),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, PageRouteBuilder(
                        pageBuilder: (_,__,___)=>OverseasTwo()));
                  },
                  child: Text('Begin',
                    textScaleFactor: 1,
                    style: TextStyle(
                        color: thirdColor,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
