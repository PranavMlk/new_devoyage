import 'package:flutter/material.dart';
import 'package:login_aadi/login/reset.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/back_arrow_button.dart';
import 'package:login_aadi/widgets/long_button.dart';
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
    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Container(
          color: thirdColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size?.hp(2.5),
              ),
              Row(
                children: [
                  BackArrow(),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: size?.wp(6),
                  ),
                  Container(
                    height:size?.hp(30),
                    width: size?.wp(80),
                    child: Image.asset(otp),
                  ),
                  SizedBox(
                    width: size?.wp(6),
                  ),
                ],
              ),
              SizedBox(
                height: size?.hp(2),
              ),
              Row(
                children: [
                  SizedBox(
                    width: size?.wp(6),
                  ),
                  Stack(
                    children:[
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Enter OTP',
                          textScaleFactor: 2.225,
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: size?.hp(4.5),),
                          Container(
                            margin: EdgeInsets.only(left: 2),
                            height: size?.hp(.6),
                            width: size?.wp(10.5),
                            decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(5)
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size?.hp(3),),
              Container(
                width: size?.wp(87),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("A 6 digit code has been sent to",
                        textScaleFactor: .95,
                        style: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("z********a@gmial.com",
                        textScaleFactor: .95,
                        style: TextStyle(
                          color: grey2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size?.hp(9),),
              OtpBox(),
              SizedBox(height: size?.hp(8),),
              LongButton(
                  action: (){
                    Navigator.push(
                        context, PageRouteBuilder(
                        pageBuilder: (_,__,___)=>Reset()));
                  },
                  text: 'Verify',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

