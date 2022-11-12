import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';

class OtpBox extends StatefulWidget {
  const OtpBox({Key? key}) : super(key: key);

  @override
  State<OtpBox> createState() => _OtpBoxState();
}

class _OtpBoxState extends State<OtpBox> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OtpContainer(),
          OtpContainer(),
          OtpContainer(),
          OtpContainer(),
          OtpContainer(),
          OtpContainer(),
        ]
    );
  }
}


class OtpContainer extends StatefulWidget {
  const OtpContainer({Key? key}) : super(key: key);

  @override
  State<OtpContainer> createState() => _OtpContainerState();
}

class _OtpContainerState extends State<OtpContainer> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      height: size?.hp(5),
      width: size?.wp(8),
      decoration: BoxDecoration(
          color: Colors.greenAccent.shade100,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text('-',
          textScaleFactor: .95,
          style: TextStyle(
              color: primaryColor
          ),
        ),
      ),
    );
  }
}

