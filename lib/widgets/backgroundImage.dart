import 'package:flutter/material.dart';
import '../utils/avatar.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(background,
        fit:BoxFit.fitWidth,
        width: 500,
      ),
    );
  }
}
