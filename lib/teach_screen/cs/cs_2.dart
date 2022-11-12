import 'package:flutter/material.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';

class CsTwo extends StatefulWidget {
  const CsTwo({Key? key}) : super(key: key);

  @override
  State<CsTwo> createState() => _CsTwoState();
}

class _CsTwoState extends State<CsTwo> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          elevation: .3,
          title: Container(
            width: size?.wp(35),
            child: Image.asset(companylogo),
          ),
          backgroundColor: thirdColor,
        ),
        body: Column(
          children: [
            SizedBox(height: size?.hp(.1),),
            Container(
              color: thirdColor,
              height: size?.hp(4),
              child: Row(
                children: [
                  SizedBox(width: size?.wp(3.5),),
                  Icon(Icons.menu_book,color: primaryColor,),
                  Text('  / Clinical Case',
                    textScaleFactor: 1,
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text('  / Oral Cavity Examination',
                    textScaleFactor: 1,
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size?.hp(.5),),
            Stack(
                children:[ Container(
                  height: size?.hp(29),
                  width: double.infinity,
                  child: Image.asset(oralCavity,fit: BoxFit.fitWidth,),
                ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: size?.hp(8),),
                        Center(
                          child: Container(
                            child: Column(
                              children: [
                                Text('Oral Cavity',
                                  textScaleFactor: 2,
                                  style: TextStyle(
                                      color: thirdColor,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                Text('Examination',
                                  textScaleFactor: 2,
                                  style: TextStyle(
                                      color: thirdColor,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                SizedBox(height: size?.hp(5.5),),
                                Text('Dr. Ranchodas Chanchad',
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      color: thirdColor,
                                      fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
            Container(
              height: size?.hp(6),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(thirdColor),
                    elevation: MaterialStateProperty.all(0)),
                child: Row(
                  children: [
                    Text('Table of contents',
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: size?.wp(43.5),),
                    Icon(Icons.expand_more,color: primaryColor,),
                    SizedBox(width: size?.wp(2),)
                  ],
                ),
                onPressed: (){},
              ),
            ),
            Divider(height: .2,color: grey1,),
            Container(
              height: size?.hp(6),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(thirdColor),
                    elevation: MaterialStateProperty.all(0)),
                child: Row(
                  children: [
                    Text('Gather Equipments',
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: size?.wp(39.5),),
                    Icon(Icons.expand_more,color: primaryColor,),
                    SizedBox(width: size?.wp(2),)
                  ],
                ),
                onPressed: (){},
              ),
            ),
            Divider(height: .2,color: grey1,),
            Container(
              height: size?.hp(6),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(thirdColor),
                    elevation: MaterialStateProperty.all(0)),
                child: Row(
                  children: [
                    Text('Introduction',
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: size?.wp(55.5),),
                    Icon(Icons.expand_more,color: primaryColor,),
                    SizedBox(width: size?.wp(2),)
                  ],
                ),
                onPressed: (){},
              ),
            ),
            Divider(height: .2,color: grey1,),
            Container(
              height: size?.hp(6),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(thirdColor),
                    elevation: MaterialStateProperty.all(0)),
                child: Row(
                  children: [
                    Text('General Inspection',
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: size?.wp(40.5),),
                    Icon(Icons.expand_more,color: primaryColor,),
                    SizedBox(width: size?.wp(2),)
                  ],
                ),
                onPressed: (){},
              ),
            ),
            Divider(height: .2,color: grey1,),
            Container(
              height: size?.hp(6),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(thirdColor),
                    elevation: MaterialStateProperty.all(0)),
                child: Row(
                  children: [
                    Text('Closer Inspection',
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: size?.wp(43.5),),
                    Icon(Icons.expand_more,color: primaryColor,),
                    SizedBox(width: size?.wp(2),)
                  ],
                ),
                onPressed: (){},
              ),
            ),
            Divider(height: .2,color: grey1,),
            Container(
              height: size?.hp(6),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(thirdColor),
                    elevation: MaterialStateProperty.all(0)),
                child: Row(
                  children: [
                    Text('Palpation',
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: size?.wp(62),),
                    Icon(Icons.expand_more,color: primaryColor,),
                    SizedBox(width: size?.wp(2),)
                  ],
                ),
                onPressed: (){},
              ),
            ),
            Divider(height: .2,color: grey1,),
            Container(
              height: size?.hp(6),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(thirdColor),
                    elevation: MaterialStateProperty.all(0)),
                child: Row(
                  children: [
                    Text('Final Examination',
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: size?.wp(43),),
                    Icon(Icons.expand_more,color: primaryColor,),
                    SizedBox(width: size?.wp(2),)
                  ],
                ),
                onPressed: (){},
              ),
            ),
            Divider(height: .2,color: grey1,),
            Container(
              height: size?.hp(6),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(thirdColor),
                    elevation: MaterialStateProperty.all(0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('References',
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(width: size?.wp(57),),
                    Icon(Icons.expand_more,color: primaryColor,),
                    SizedBox(width: size?.wp(2),)
                  ],
                ),
                onPressed: (){},
              ),
            ),
            Divider(height: .2,color: grey1,),
            SizedBox(height: size?.hp(2),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/expanded.png'),
                SizedBox(width: size?.wp(4),),
                Container(
                  width: size?.wp(21),
                  height: size?.hp(2),
                  child: Stack(children: [Image.asset('assets/voyagegrey.png'),
                    Row(
                      children: [
                        SizedBox(width: size?.wp(9.5),),
                        Image.asset('assets/ygrey.png'),
                      ],
                    )
                  ],
                  ),
                ),
                SizedBox(width: size?.wp(1),),
                Image.asset('assets/expanded.png')
              ],
            )
          ],
        ),
      ),
    );
  }
}
