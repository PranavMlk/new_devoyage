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
          backgroundColor: grey1,
          appBar: AppBar(
            toolbarHeight: 49.8,
            elevation: .3,
            backgroundColor: thirdColor,
            title: Container(
              width: size?.wp(35),
              child: Image.asset(companylogo),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: size?.hp(5),
                  color: thirdColor,
                  child: Row(
                    children: [
                      Container(
                        width: size?.wp(9),
                        child: TextButton(
                            onPressed: (){},
                            child: Icon(Icons.menu_book,color: primaryColor,size: 20,)),
                      ),

                      TextButton(
                        onPressed: (){
                        },
                        child: Row(
                          children: [
                            Text('/ ',
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text('MCQ',
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
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                McqCard()
              ],
            ),
          ),
        ),
    );
  }
}
