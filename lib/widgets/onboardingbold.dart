import 'package:flutter/material.dart';
import 'package:login_aadi/utils/responsive.dart';

import '../utils/avatar.dart';
import '../utils/colors/colors.dart';

class BoldText extends StatelessWidget {
  late String text;

  BoldText({
    required this.text,
});

  @override
  Widget build(BuildContext context) {
    Screen ? size;
    return Container(
      height: size?.hp(3),
      width: size?.wp(70),
      alignment: Alignment.center,
      child: Text(text,
        textScaleFactor: 1.32,
        style: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class LateBold extends StatelessWidget {
  late String text;

  LateBold({
    required this.text
});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      textScaleFactor: 0.95,
      style: TextStyle(
          color: grey3,

          fontWeight: FontWeight.w400
      ),
    );
  }
}



