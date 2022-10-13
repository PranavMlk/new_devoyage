import 'package:flutter/material.dart';
import 'package:login_aadi/login/forgot_password.dart';
import 'package:login_aadi/sign%20up/sign_up.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/lockIcon.dart';
import 'package:login_aadi/widgets/mailIcon.dart';
import 'package:login_aadi/widgets/visibilityOff.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Image.asset(login),
                ),
                Stack(
                  children:[ Container(
                    margin: EdgeInsets.only(top: 5,left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text('Login',
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
                      width: 37,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,left: 25,right: 20),
                  child: Column(
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
                        height: 5,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon:LockIcon(),
                          label: Text('Password',
                            style: TextStyle(
                                color: grey1,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          suffixIcon: IconButton(
                            onPressed: (){},
                            icon: VisibilityIcon(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 12),
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                          context, PageRouteBuilder(
                          pageBuilder: (_,__,___)=>ForgotPassword()));
                    },
                    child: Text('Forgot Password?',
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  height: 40,
                  margin: EdgeInsets.only(top:10),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: Text('Login',
                      style: TextStyle(
                          fontSize: 15,
                          color: thirdColor,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 11),
                  alignment: Alignment.center,
                  child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Divider(
                              color: grey1,
                              endIndent: 15,
                              indent: 32,
                            )
                        ),

                        Text("OR",
                          style: TextStyle(
                              color: grey2,
                              fontWeight: FontWeight.w500
                          ),
                        ),

                        Expanded(
                          child: Divider(
                            color: grey1,
                            endIndent: 32,
                            indent: 15,
                          ),
                        ),
                      ]
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 350,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Container(
                    child: TextButton(
                        onPressed: (){},
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 40),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle
                              ),
                              child: Image.asset(google),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 55),
                              child: Text('Login with google',
                                style: TextStyle(
                                    color: grey3,
                                    fontSize: 15
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New to DeVoyage?',
                        style: TextStyle(
                            color: grey2
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                              context, PageRouteBuilder(
                              pageBuilder: (_,__,___)=>SignUp()));
                        },
                        child: Text('Register',
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
