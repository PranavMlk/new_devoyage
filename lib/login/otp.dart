import 'package:flutter/material.dart';
import 'package:login_aadi/login/reset.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/back_arrow_button.dart';
import 'package:login_aadi/widgets/otpBox.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: thirdColor,
          body: SingleChildScrollView(
            child: Container(
              color: thirdColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackArrow(),
                  Container(
                    height: 225,
                    child: Image.asset(otp),
                  ),
                  Stack(
                    children:[
                      Container(
                        margin: EdgeInsets.only(top: 5,left: 20),
                        alignment: Alignment.centerLeft,
                        child: Text('Enter OTP',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 32,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 42,left: 22),
                        height:3.5,
                        width: 48,
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20,top: 10),
                          alignment: Alignment.centerLeft,
                          child: Text("A 6 digit code has been sent to",
                            style: TextStyle(
                                color: grey2,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20,top: 1),
                          alignment: Alignment.centerLeft,
                          child: Text("z********a@gmial.com",
                            style: TextStyle(
                              color: grey2,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        OtpBox(),
                      ],
                    ),
                  ),
                  Container(
                    width: 350,
                    height: 40,
                    margin: EdgeInsets.only(top:55),
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(
                            context, PageRouteBuilder(
                            pageBuilder: (_,__,___)=>Reset()));
                      },
                      child: Text('Verify',
                        style: TextStyle(
                            fontSize: 15,
                            color: thirdColor,
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

