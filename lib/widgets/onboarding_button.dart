import 'package:flutter/material.dart';

import '../utils/colors/colors.dart';

class OnboardingButton extends StatelessWidget {

  late Function() action;

  OnboardingButton({
    required this.action,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,height: 65,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(CircleBorder()),
          backgroundColor: MaterialStateProperty.all(secondaryColor),
        ),
        child: Container(
          height: 33,
          width: 33,
          decoration: BoxDecoration(
              color: thirdColor,
              borderRadius: BorderRadius.circular(25)
          ),
          child: Icon(Icons.arrow_forward_ios_rounded,
              color: primaryColor),
        ),
        onPressed: action
      )
    );
  }
}
