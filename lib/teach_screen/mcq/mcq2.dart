import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/mcq_card.dart';

import '../../utils/avatar.dart';

class McqTwo extends StatefulWidget {
  const McqTwo({Key? key}) : super(key: key);

  @override
  State<McqTwo> createState() => _McqTwoState();
}

class _McqTwoState extends State<McqTwo> {
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
                              },
                              child: Text('MCQ',
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
                      Text('Human Anatomy',
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
                  padding: EdgeInsets.symmetric(horizontal:10),
                  child: ListView(
                      children: [
                        SizedBox(height: size?.hp(1),),
                        McqCard(name: 'Gametogenesis', model: Icons.lock_open_outlined,color: primaryColor,text: 'FREE',),
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
