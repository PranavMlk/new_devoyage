import 'package:flutter/material.dart';
import 'package:login_aadi/login/otp.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/back_arrow_button.dart';
import 'package:login_aadi/widgets/long_button.dart';
import 'package:login_aadi/widgets/mailIcon.dart';

import '../utils/colors/colors.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                    height:size?.hp(35),
                    width: size?.wp(80),
                    child:Image.asset(forgot),
                  ),
                  SizedBox(
                    width: size?.wp(6),
                  ),
                ],
              ),
              SizedBox(
                  height: size?.hp(1),
              ),
              Row(
                children: [
                  SizedBox(width:size?.wp(6),),
                  Stack(
                    children:[
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('Forgot',
                          textScaleFactor: 2.225,
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: size?.hp(4.7),),
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
              Row(
                children: [
                  SizedBox(width:size?.wp(6),),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Password?',
                      textScaleFactor: 2.225,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height:size?.hp(2),),
              Container(
                width: size?.wp(87),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Don't worry it happense. Please enter the address",
                        textScaleFactor: .95,
                        style: TextStyle(
                          color: grey2,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("associated with your account.",
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
              SizedBox(height: size?.hp(1),),
              Container(
                width: size?.wp(87),
                child: TextField(
                  decoration: InputDecoration(
                    icon:EmailIcon(),
                    label: Text('Email ID / Mobile Number',
                      textScaleFactor: .95,
                      style: TextStyle(
                          color: grey2,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size?.hp(3.9),),
              LongButton(
                  action: (){
                    Navigator.push(
                        context, PageRouteBuilder(
                        pageBuilder: (_,__,___)=>Otp()));
                  },
                  text: 'Continue'
              ),
            ],
          ),
        ),
      ),
    );
  }
}

