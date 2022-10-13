import 'package:flutter/material.dart';

import '../utils/colors/colors.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Skip',
      style: TextStyle(
          color: primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w700
      ),
    );
  }
}
