import 'package:flutter/material.dart';
import 'package:login_aadi/login/login_screen.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/widgets/mailIcon.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: thirdColor,
        body: SingleChildScrollView(
          child: Container(
            color: thirdColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 225,
                  margin: EdgeInsets.only(top: 5),
                  child: Image.asset(signup),
                ),
                Stack(
                  children:[ Container(
                    margin: EdgeInsets.only(top: 7,left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text('Sign uuuup',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                    Container(
                      margin: EdgeInsets.only(top: 42,left: 22),
                      height:3.5,
                      width: 29,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10,left: 25,right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          icon: EmalIcons(),
                          label: Text('Email ID',
                            style: TextStyle(
                                color: grey1,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70,
                            width: 87,
                            child: TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.emoji_emotions_outlined,
                                  color: primaryColor,
                                  size: 25,
                                ),
                                label: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Dr',
                                      style: TextStyle(
                                          color: grey1,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    Icon(Icons.keyboard_arrow_down_outlined,
                                      color: grey2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 272,
                            child: TextField(
                              decoration: InputDecoration(
                                label: Text('John Doe',
                                  style: TextStyle(
                                      color: grey1,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.phone,
                              color: primaryColor,
                              size: 25),
                          label: Text('Mobile',
                            style: TextStyle(
                                color: grey1,
                                fontWeight: FontWeight.w400

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 60,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 28,top:10),
                            child: Text('By signing up, you agree to our',
                              style: TextStyle(
                                  color: grey2,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 28,top: 5),
                            child: Text('and',
                              style: TextStyle(
                                  color: grey2,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                        ],

                      ),
                    ),
                    Container(
                      height: 30,
                      margin: EdgeInsets.only(left: 201,top: 2),
                      child: TextButton(
                        onPressed: (){},
                        child: Text('Terms & Conditions',
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      margin: EdgeInsets.only(left: 45,top:21.5),
                      child: TextButton(
                        onPressed: (){},
                        child: Text('Privacy Policy',
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 350,
                  height: 40,
                  margin: EdgeInsets.only(top:27),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: Text('Continue',
                      style: TextStyle(
                          fontSize: 15,
                          color: thirdColor,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already a member?',
                        style: TextStyle(
                            color: grey2
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, PageRouteBuilder(
                              pageBuilder: (_,__,___)=>LoginScreen()));
                        },
                        child: Text('Login',
                          style: TextStyle(
                              color: primaryColor
                          ),
                        ),
                      ),
                    ],
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
