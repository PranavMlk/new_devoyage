import 'package:flutter/material.dart';
import 'package:login_aadi/login/login_screen.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/long_button.dart';
import 'package:login_aadi/widgets/mailIcon.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            children: [
              SizedBox(
                height: size?.hp(2),
              ),
              Container(
                height:size?.hp(42),
                width: size?.wp(80),
                child: Image.asset(signup),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Stack(
                  children:[
                    Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Sign up',
                      textScaleFactor: 2.275,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 32),
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
              SizedBox(height:size?.hp(1),),
              Container(
                width: size?.wp(87),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        icon: EmailIcon(),
                        label: Text('Email ID',
                          textScaleFactor: 1,
                          style: TextStyle(
                              color: grey2,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size?.hp(1),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size?.wp(20),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.emoji_emotions_outlined,
                                color: primaryColor,
                                size: 30,
                              ),
                              label: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Dr',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: grey2,
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
                          width: size?.wp(65),
                          child: TextField(
                            decoration: InputDecoration(
                              label: Text('John Doe',
                                textScaleFactor: 1,
                                style: TextStyle(
                                    color: grey2,
                                    fontWeight: FontWeight.w400
                                ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height:size?.hp(1),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone,
                            color: primaryColor,
                            size: 30),
                        label: Text('Mobile',
                          textScaleFactor: 1,
                          style: TextStyle(
                              color: grey2,
                              fontWeight: FontWeight.w400

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size?.hp(0.5),),
              Container(
                width: size?.wp(87),
                child: Stack(
                  children:[
                    Row(
                      children: [
                        Text('By signing up, you agree to our',
                          textScaleFactor: 1.2,
                          style: TextStyle(
                              color: grey2,
                              fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          height: size?.hp(4.75),
                          child: TextButton(
                            onPressed: (){},
                            child: Text('Terms & Conditions',
                              textScaleFactor: 1.2,
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
      ]
                    ),
      Container(
        margin: EdgeInsets.only(top: 19),
        child: Row(
          children: [
            Text('and',
              textScaleFactor: 1.2,
              style: TextStyle(
                      color: grey2,
                      fontWeight: FontWeight.w400
              ),
            ),
            Container(
              height: size?.hp(4.75),
              child: TextButton(
                    onPressed: (){},
                    child: Text('Privacy Policy',
                      textScaleFactor: 1.2,
                      style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
          ]
                ),
              ),
              SizedBox(height: size?.hp(2.4),),
              LongButton(
                  action: (){},
                  text: 'Continue',
              ),
              SizedBox(height: size?.hp(.25),),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a member?',
                      textScaleFactor: 1.2,
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
                        textScaleFactor: 1.2,
                        style: TextStyle(
                            color: primaryColor
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        ]
      ),
    ),
      )
    );
  }
}
