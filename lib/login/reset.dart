import 'package:flutter/material.dart';
import 'package:login_aadi/login/login_screen.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/back_arrow_button.dart';
import 'package:login_aadi/widgets/lockIcon.dart';
import 'package:login_aadi/widgets/visibilityOff.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size =Screen(MediaQuery.of(context).size);
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
                  height: 217,
                  child: Image.asset(reset),
                ),
                Stack(
                  children:[
                    Container(
                      margin: EdgeInsets.only(top: 5,left: 20),
                      alignment: Alignment.centerLeft,
                      child: Text('Reset',
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 32,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 41,left: 22),
                      height:3.5,
                      width: 40,
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Password!',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20,top: 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          icon: LockIcon(),
                          label: Text('New Password',
                            style: TextStyle(
                                color: grey1,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          suffixIcon: VisibilityIcon(),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          icon: LockIcon(),
                          label: Text('Confirm New Password',
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
                Container(
                  width: 350,
                  height: 40,
                  margin: EdgeInsets.only(top:30),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, PageRouteBuilder(
                          pageBuilder: (_,__,___)=>LoginScreen()));
                    },
                    child: Text('Reset',
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

