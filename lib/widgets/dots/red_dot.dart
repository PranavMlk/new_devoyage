import 'package:flutter/material.dart';

import '../../utils/colors/colors.dart';

class RedDot extends StatelessWidget {
  const RedDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 7),
      height: 6,
      width: 45,
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}
