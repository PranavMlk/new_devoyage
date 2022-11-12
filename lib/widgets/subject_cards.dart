import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';

class SubjectCard extends StatelessWidget {

  late String text1;
  late String text2;
  late Function() action;

  SubjectCard({
    required this.text1,
    required this.text2,
    required this.action,
});

Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      height: size?.hp(12.4),
      width: size?.wp(95),
      color: grey1,
      child: TextButton(
        onPressed: action,
        child: Stack(
            children: [
        Container(
        padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: thirdColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text(text1,
              textScaleFactor: 1,
              style: TextStyle(
                  color: grey2,
                  fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(text2,
              textScaleFactor: .8,
              style: TextStyle(
                  color: grey2,
                  fontWeight: FontWeight.w500
              ),
            )
          ],
        )
        ],
      ),
    ),
    Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Container(
    height: size?.hp(1.7),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
    color: primaryColor,
    ),
    ),
    ],
    )
    ],
    ),
    ),
    );
  }
}

