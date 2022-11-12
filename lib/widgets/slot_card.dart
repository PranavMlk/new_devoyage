import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';

class SlotCard extends StatelessWidget {

  late String text1;
  late Color textColor1;
  late Color boxColor1;
  late String text2;
  late Color textColor2;
  late Color boxColor2;
  late Function() action;

  SlotCard({
    required this.text1,
    required this.textColor1,
    required this.boxColor1,
    required this.text2,
    required this.textColor2,
    required this.boxColor2,
    required this.action,
  });

  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      width: size?.wp(26.5),
      height: size?.hp(9),
      color: grey1,
      child: TextButton(
        onPressed: action,
        child: Stack(
          children: [
            Container(
              width: size?.wp(26.5),
              padding: EdgeInsets.only(top: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: boxColor1,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(text1,
                    textScaleFactor: 1.3,
                    style: TextStyle(
                        color: textColor1,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: size?.hp(2),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                    color: boxColor2,
                  ),
                  child: Text(text2,
                    textScaleFactor: .9,
                    style: TextStyle(
                      color: textColor2,
                      fontWeight: FontWeight.w500
                    ),
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
