import 'package:flutter/material.dart';
import 'package:login_aadi/overseas/oversease3.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/universityCard.dart';

class OverseasTwo extends StatefulWidget {
  const OverseasTwo({Key? key}) : super(key: key);

  @override
  State<OverseasTwo> createState() => _OverseasTwoState();
}

class _OverseasTwoState extends State<OverseasTwo> {
  Screen ? size;
  var container_visibility =false;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
        child: Scaffold(
          backgroundColor: grey1,
          appBar: AppBar(
            backgroundColor: thirdColor,
            elevation: .2,
            leading: IconButton(
              icon:Icon(Icons.arrow_back_ios_new_outlined,color: primaryColor),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            title: Text('Study Abroad',
              textScaleFactor: 1.3,
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: size?.hp(11),
                  color: thirdColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: size?.wp(5),),
                          Icon(Icons.stars_sharp,color: secondaryColor,size: 27.5,),
                          SizedBox(width: size?.wp(5),),
                          Text('Shortlist Universities',
                            textScaleFactor: 1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(width: size?.wp(34),),
                          Container(
                            height: size?.hp(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: secondaryColor,
                            ),
                            child: Visibility(
                              visible: container_visibility,
                              child: IconButton(
                                  onPressed: (){
                                    Navigator.push(context, PageRouteBuilder(
                                        pageBuilder:(_,__,___)=>OverSeaseThree(),
                                    ),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward,size:20,color: thirdColor,),
                            ),
                          ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CountryButton(text: 'Russia', buttonColor: primaryColor, textColor: thirdColor),
                          CountryButton(text: 'Georgia', buttonColor: grey2, textColor: grey1),
                          CountryButton(text: 'Armenia', buttonColor: grey2, textColor: grey1),
                          CountryButton(text: 'USA', buttonColor: grey2, textColor: grey1),
                          CountryButton(text: 'Canada', buttonColor: grey2, textColor: grey1),
                          CountryButton(text: 'UK', buttonColor: grey2, textColor: grey1),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: size?.hp(1),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('9 results',
                          textScaleFactor: .9,
                          style: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(width: size?.wp(7),)
                      ],
                    ),
                    SizedBox(height: size?.hp(1),),
                    UniversityCard(
                        image: 'assets/university1.png', title: 'Tver State Medical University', subTitle: 'Tver,Russia',
                        text1: '5178', text1_2: 'World rank',
                        text2: 'Private', text2_2: 'University type',
                        text3: '6 Yrs', text3_2: 'Course duration',
                        text4: '684000rs/yr', text4_2: 'Course fee',
                        action: (){
                          setState(() {
                            container_visibility=!container_visibility;
                          });
                        }
                    ),
                    SizedBox(height: size?.hp(2),),
                    UniversityCard(
                        image: 'assets/university2.png', title: 'Far Eastern Federal University', subTitle: 'Tver,Russia',
                        text1: '5178', text1_2: 'World rank',
                        text2: 'Private', text2_2: 'University type',
                        text3: '6 Yrs', text3_2: 'Course duration',
                        text4: '684000rs/yr', text4_2: 'Course fee',
                      action: (){
                          setState(() {
                            container_visibility=!container_visibility;
                          });
                      }
                    ),
                    SizedBox(height: size?.hp(2),),
                    UniversityCard(
                        image: 'assets/university3.png', title: 'Rudan State Medical University', subTitle: 'Tver,Russia',
                        text1: '5178', text1_2: 'World rank',
                        text2: 'Private', text2_2: 'University type',
                        text3: '6 Yrs', text3_2: 'Course duration',
                        text4: '684000rs/yr', text4_2: 'Course fee',
                        action: (){
                          setState(() {
                            container_visibility=!container_visibility;
                          });
                        }
                    ),
                    SizedBox(height: size?.hp(2),),
                    UniversityCard(
                        image: 'assets/university4.png', title: 'Tyumen State Medical University', subTitle: 'Tver,Russia',
                        text1: '5178', text1_2: 'World rank',
                        text2: 'Private', text2_2: 'University type',
                        text3: '6 Yrs', text3_2: 'Course duration',
                        text4: '684000rs/yr', text4_2: 'Course fee',
                        action: (){
                          setState(() {
                            container_visibility=!container_visibility;
                          });
                        }
                    ),
                    SizedBox(height: size?.hp(2),),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
