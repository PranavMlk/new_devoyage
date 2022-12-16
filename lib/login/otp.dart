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
                height: size?.hp(5),
              ),
              Row(
                children: [
                  BackArrow(),
                ],
              ),
              Container(
                height:size?.hp(30),
                width: size?.wp(80),
                child: Image.asset(otp),
              ),
              SizedBox(
                height: size?.hp(2),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Stack(
                  children:[
                    Container(
                      height: size?.hp(5),
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
                          margin: EdgeInsets.only(left:1.5),
                          height: size?.hp(.4),
                          width: size?.wp(6),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(5)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: size?.hp(3),),
              Padding(
                padding: const EdgeInsets.only(left:30),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text("A 6 digit code has been sent to",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                              color: grey2,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text("z********a@gmial.com",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size?.hp(7.5),),
              OtpBox(),
              SizedBox(height: size?.hp(4),),
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

