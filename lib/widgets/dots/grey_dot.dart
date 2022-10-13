import 'package:flutter/material.dart';

import '../../utils/colors/colors.dart';

class GreyDot extends StatelessWidget {
  const GreyDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 7),
      height: 6,
      width: 6,
      decoration: BoxDecoration(
          color: grey2,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}
