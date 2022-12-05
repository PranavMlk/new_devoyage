import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';

class TeachCard extends StatelessWidget {

  late String text1;
  late String text2;
  late String text3;
  late Function() action;

  TeachCard({
   required this.text1,
   required this.text2,
   required this.text3,
    required this.action,
});

  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      height: size?.hp(15),
      width: size?.wp(95),
      color: grey1,
      child: TextButton(
        onPressed: action,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: thirdColor,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(text1,
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          color: grey2,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Icon(Icons.more_vert_outlined,color: grey2,size: 25,)
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(text2,
                        textScaleFactor: 1,
                        style: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                  Spacer(flex: 7,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(text3,
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(width: size?.wp(1.5),)
                      ],
                    ),
                  )
                ],
              ),
      ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: size?.hp(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                        color: primaryColor,
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

