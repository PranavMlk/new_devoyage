import 'package:flutter/material.dart';
import 'package:login_aadi/login/otp.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/back_arrow_button.dart';
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
    return SafeArea(
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
                  child:Image.asset(forgot),
                ),
                Stack(
                  children:[
                    Container(
                      margin: EdgeInsets.only(top: 5,left: 20),
                      alignment: Alignment.centerLeft,
                      child: Text('Forgot',
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
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
                  margin: EdgeInsets.only(left: 20,),
                  alignment: Alignment.centerLeft,
                  child: Text('Password?',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20,top: 9),
                        alignment: Alignment.centerLeft,
                        child: Text("Don't worry it happense. Please enter the address",
                          style: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20,top: 1),
                        alignment: Alignment.centerLeft,
                        child: Text("associated with your account.",
                          style: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      icon:EmalIcons(),
                      label: Text('Email ID / Mobile Number',
                        style: TextStyle(
                            color: grey1,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  height: 40,
                  margin: EdgeInsets.only(top:35),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                          context, PageRouteBuilder(
                          pageBuilder: (_,__,___)=>Otp()));
                    },
                    child: Text('Continue',
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
    );
  }
}

