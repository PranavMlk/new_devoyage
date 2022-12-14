import 'package:flutter/material.dart';

import '../login/login_screen.dart';
import '../utils/colors/colors.dart';

class SkipButton extends StatefulWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  State<SkipButton> createState() => _SkipButtonState();
}

class _SkipButtonState extends State<SkipButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          Navigator.push(
              context, PageRouteBuilder(
              pageBuilder: (_,__,___)=>LoginScreen()));
        },
        child: Text('Skip',
          textScaleFactor: 1.5,
          style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w700
          ),
        ),
    );
  }
}

