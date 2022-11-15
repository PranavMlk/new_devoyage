import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';

class McqCard extends StatelessWidget {

  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      height: size?.hp(12),
      width: size?.wp(95),
      decoration: BoxDecoration(
        color: thirdColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: TextButton(
        onPressed: (){},
        child: Row(
          children: [
            Image.asset('assets/mcqcard.png'),
          ],
        ),
      ),
    );
  }
}
