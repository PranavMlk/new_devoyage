import 'package:flutter/material.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';

import '../tech_home_screen.dart';
import 'cs_1.dart';

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
          automaticallyImplyLeading: false,
          elevation: .3,
          title: Container(
            width: size?.wp(35),
            child: Image.asset(companylogo),
          ),
          backgroundColor: thirdColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size?.hp(.1),),
              Container(
                color: thirdColor,
                padding: EdgeInsets.only(left: 7),
                height: size?.hp(5),
                child: Row(
                  children: [
                Container(
                  width: size?.wp(5),

                child: TextButton(
                    onPressed: (){
                      Navigator.push(
                          context, PageRouteBuilder(
                          pageBuilder: (_,__,___)=>TeachHome()));
                    },
                    child: Icon(Icons.menu_book,color: primaryColor,size: 20,)
                ),
              ),
      SizedBox(width: size?.wp(5),),

      Container(
          child: Row(
            children: [
              Text('/',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: (){
                  Navigator.push(
                      context, PageRouteBuilder(
                      pageBuilder: (_,__,___)=>CsOne()));
                },
                child: Text('Clinical Case',
                  textScaleFactor: 1,
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
            ],
          ),
      ),
                    Text('/ ',
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text('Oral Cavity Examination',
                      textScaleFactor: 1,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: size?.hp(83),
                width: double.infinity,
                child: ListView(
                    children: [
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
                      ExpansionTile(
                        title: Text(''),
                        leading: Text('Table of Content',
                          textScaleFactor: 1.5,
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        initiallyExpanded: false,
                        collapsedIconColor: primaryColor,
                        children: [
                          Text('1. Gather Equipments'),
                          Text('2. Introduction'),
                          Text('3. General Inspection'),
                          Text('4. Closer Inspection'),
                          Text('5. Palpation'),
                          Text('6. Final Examination'),
                          Text('7. References')
                        ],
                      ),
                      Divider(color: fourthColor,),
           ExpansionTile(
            title: Text(''),
            leading: Text('Gather Equipments',
              textScaleFactor: 1.5,
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w600
              ),
            ),
            initiallyExpanded: false,
            children: [
              Text('Headtorch or pen torch'),
              Text('Tounge depressors(x2)'),
                      ],
                  ),
        Divider(color: fourthColor,),

        ExpansionTile(
              title: Text(''),
              leading: Text('Introduction',
                textScaleFactor: 1.5,
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w600
                ),
              ),
              initiallyExpanded: false,
              children: [
              ],
            ),
                      Divider(color: fourthColor,),
        ExpansionTile(
          title: Text(''),
          leading: Text('General Inspection',
            textScaleFactor: 1.5,
            style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600
            ),
          ),
          initiallyExpanded: false,
          children: [
          ],
        ),
                      Divider(color: fourthColor,),
        ExpansionTile(
          title: Text(''),
          leading: Text('Closer Inspection',
            textScaleFactor: 1.5,
            style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600
            ),
          ),
          initiallyExpanded: false,
          children: [
          ],
        ),
                      Divider(color: fourthColor,),
        ExpansionTile(
          title: Text(''),
          leading: Text('Palpation',
            textScaleFactor: 1.5,
            style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600
            ),
          ),
          initiallyExpanded: false,
          children: [
          ],
        ),
                      Divider(color: fourthColor,),
        ExpansionTile(
          title: Text(''),
          leading: Text('Final Examination',
            textScaleFactor: 1.5,
            style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600
            ),
          ),
          iconColor: primaryColor,
          initiallyExpanded: false,
          children: [
          ],
        ),
                      Divider(color: fourthColor,),
        ExpansionTile(
          title: Text(''),
          leading: Text('References',
            textScaleFactor: 1.5,
            style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600
            ),
          ),
          initiallyExpanded: false,
          children: [
          ],
        ),
                      Divider(color: fourthColor,),
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
        ]
              ),
              ),

  ]
        ),
        ),
      ),
    );

  }
}
