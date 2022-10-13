import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';

class OtpBox extends StatelessWidget {
  const OtpBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 39,left: 20,right: 20),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      OtpContainer(),
      OtpContainer(),
      OtpContainer(),
      OtpContainer(),
      OtpContainer(),
      OtpContainer()
    ]
    ),
    );
  }
}


class OtpContainer extends StatelessWidget {
  const OtpContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 35,
        decoration: BoxDecoration(
            color: Colors.greenAccent.shade100,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text('-',
            style: TextStyle(
                color: primaryColor
            ),
          ),
        ),
    );
  }
}
