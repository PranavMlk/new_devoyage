import 'package:flutter/material.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/mailIcon.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: thirdColor,
            elevation: .3,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size?.wp(35),
                  child: Image.asset(companylogo),
                ),
              ],
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                height: size?.hp(10),
                width: size?.wp(20),
                child: CircleAvatar(
                  backgroundColor: primaryColor,
                ),
              ),
              Spacer(flex: 2,),
              Text('Jane Deo',
                textScaleFactor: 1.3,
                style: TextStyle(
                    color: fourthColor,
                    fontWeight: FontWeight.bold
                ),
              ),
              Spacer(flex: 2,),
              Text('A.J.Institute of Medical Sciences and Research Centre',
                textScaleFactor: 1,
                style: TextStyle(
                    color: fourthColor,
                    fontWeight: FontWeight.w400
                ),
              ),
              Text('Medical Student - 1st Year',
                textScaleFactor: 1,
                style: TextStyle(
                    color: fourthColor,
                    fontWeight: FontWeight.w400
                ),
              ),
              Spacer(flex:7,),
              Divider(color: grey1,thickness: 1,),
              Spacer(),
              Container(
                width: size?.wp(87),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size?.wp(20),
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
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        color: fourthColor,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down_outlined,
                                    color: fourthColor,
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
                              label: Text('Jane Doe',
                                textScaleFactor: 1,
                                style: TextStyle(
                                    color: fourthColor,
                                    fontWeight: FontWeight.w400
                                ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                          icon: EmailIcon(),
                          label: Text('janedeo@gmail.com',
                            textScaleFactor: 1,
                            style: TextStyle(
                                color: fourthColor,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.phone_enabled_outlined,color: primaryColor,),
                          label: Text('9876543610',
                            textScaleFactor: 1,
                            style: TextStyle(
                                color: fourthColor,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 2,),
              Divider(color: grey1,thickness: 1,),
              Spacer(flex: 3,),
              Container(
                padding: EdgeInsets.only(left: 5,right: 5),
                height: size?.hp(5),
                width: size?.wp(90),
                decoration: BoxDecoration(
                  color: grey1,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Verify Profile',
                        textScaleFactor: 1,
                        style: TextStyle(
                            color: fourthColor
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded,size: 15,color: fourthColor),
                    ],
                  ),
                ),
              ),
              Spacer(flex: 3,),
              Container(
                padding: EdgeInsets.only(left: 5,right: 5),
                height: size?.hp(5),
                width: size?.wp(90),
                decoration: BoxDecoration(
                    color: grey1,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: TextButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Reset Questions',
                        textScaleFactor: 1,
                        style: TextStyle(
                          color: fourthColor
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded,size: 15,color: fourthColor,),
                    ],
                  ),
                ),
              ),
              Spacer(flex: 20,)
            ],
          ),
        ),
    );
  }
}
