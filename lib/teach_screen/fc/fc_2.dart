import 'package:flutter/material.dart';
import 'package:login_aadi/teach_screen/fc/fc_1.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/dots/blackdot.dart';

import '../tech_home_screen.dart';

class FcTwo extends StatefulWidget {
  const FcTwo({Key? key}) : super(key: key);

  @override
  State<FcTwo> createState() => _FcTwoState();
}

class _FcTwoState extends State<FcTwo> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
        child: Scaffold(
          backgroundColor: grey1,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: thirdColor,
            toolbarHeight: 49.8,
            elevation: .3,
            title: Container(
              width: size?.wp(35),
              child: Image.asset(companylogo),
            ),
          ),
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 7),
                height: size?.hp(5),
                width: double.infinity,
                color: thirdColor,
                child: Row(
                  children: [
                    Container(
                      width: size?.wp(7),
                      child: TextButton(
                          onPressed: (){
                            Navigator.push(
                                context, PageRouteBuilder(
                                pageBuilder: (_,__,___)=>TeachHome()));
                          },
                          child: Icon(Icons.menu_book,color: primaryColor,size: 25,)),
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___)=>FcOne()));
                      },
                      child: Row(
                        children: [
                          Text('/ ',
                            textScaleFactor: 1.3,
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text('Flash Card',
                            textScaleFactor: 1.3,
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text('/',
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(' Human Anatomy',
                      textScaleFactor: 1.3,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size?.hp(1),),
              Container(
                height: size?.hp(74.2),
                width: size?.wp(95),
                decoration:BoxDecoration(
                  color: thirdColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Spacer(flex: 2,),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('What is the',
                                  textScaleFactor: 1.2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                                Text(' origin',
                                  textScaleFactor: 1.2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(' and',
                                  textScaleFactor: 1.2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                                Text(' insertion',
                                  textScaleFactor: 1.2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(' of the',
                                  textScaleFactor: 1.2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('lateral rectus',
                                  textScaleFactor: 1.2,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(' muscle?',
                                  textScaleFactor: 1.2,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Divider(indent: size?.wp(17),endIndent: size?.wp(17),color: grey2,),
                    Spacer(flex: 2,),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Row(
                              children: [
                                Text('1. Origin :',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(' common tendinous ring or the',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 67),
                            child: Row(
                              children: [
                                Text('annulus of zinn',
                                  textScaleFactor: 1.1,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(flex: 2,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        children: [
                          Text('2. Insertin :',
                            textScaleFactor: 1.2,
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(' lateral aspect of the sclera',
                            textScaleFactor: 1.1,
                            style: TextStyle(
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(flex: 2,),
                    Container(
                      width: size?.wp(85),
                        height: size?.hp(17),
                        child: Image.asset('assets/humananotamy.png',),
                    ),
                    Spacer(flex: 2,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:50),
                      child: Container(
                        child: Row(
                          children: [
                            BlackDot(),
                            SizedBox(width: size?.wp(2),),
                            Text('NOTES :',
                              textScaleFactor: 1.2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('The lateral rectus is a flat-shapped muscle',
                              textScaleFactor: 1.1,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('and an abductor which moves the eye',
                              textScaleFactor: 1.1,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('laterally and side to side along with the',
                              textScaleFactor: 1.1,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('medical rectus.',
                              textScaleFactor: 1.1,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(flex: 2,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        child: Row(
                          children: [
                            BlackDot(),
                            SizedBox(width: size?.wp(2),),
                            Text('REFERENCES :',
                              textScaleFactor: 1.2,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        width: size?.wp(76),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('www.patient.co.uk,Egton Medical',
                              textScaleFactor: 1.2,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Text('Information System Limited.',
                              textScaleFactor: 1.2,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(flex: 2,),
                  ],
                ),
              ),
              SizedBox(height: size?.hp(1),),
              Container(
                height: size?.hp(8),
                width: double.infinity,
                color: thirdColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      width: size?.hp(11),
                      height: size?.wp(8),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(primaryColor),
                        ),
                          onPressed: (){},
                          child: Text('PREV',
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: thirdColor,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                      ),
                    ),
                    Text('1 / 120',
                      textScaleFactor: 1.1,
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      width: size?.hp(11),
                      height: size?.wp(8),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(primaryColor),
                        ),
                        onPressed: (){},
                        child: Text('NEXT',
                          textScaleFactor: 1,
                          style: TextStyle(
                              color: thirdColor,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
