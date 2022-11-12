import 'package:flutter/material.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';

import '../utils/responsive.dart';

class TimerOne extends StatefulWidget {
  const TimerOne({Key? key}) : super(key: key);

  @override
  State<TimerOne> createState() => _TimerOneState();
}

class _TimerOneState extends State<TimerOne> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
        child: Scaffold(
          backgroundColor: thirdColor,
          appBar: AppBar(
            leading: Icon(Icons.arrow_back_ios_new_outlined,color: primaryColor,size: size?.hp(2.5),),
            backgroundColor: thirdColor,
            elevation: .2,
            title: Row(
              children: [
                SizedBox(width: size?.wp(14.5),),
                Container(
                  width: size?.wp(35),
                    height: size?.hp(3),
                    child: Image.asset(companylogo)),
              ],
            ),
          ),
          body: Column(
            children: [
              SizedBox(height: size?.hp(5),),
              Container(
                height: size?.hp(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.keyboard_arrow_up_outlined,color: primaryColor,size: size?.hp(4.5),),
                    SizedBox(width: size?.wp(5),),
                    Text('00:10:00',textScaleFactor: 3,
                      style: TextStyle(
                        color: primaryColor
                      ),
                    ),
                    SizedBox(width: size?.wp(5),),
                    Icon(Icons.keyboard_arrow_down_outlined,color: primaryColor,size: size?.hp(4.5),),
                  ],
                ),
              ),
              SizedBox(height: size?.hp(9),),
              Container(
                height: size?.hp(44),
                width: size?.wp(50),
                child: Image.asset('assets/timer1.png'),
              ),
              SizedBox(height: size?.hp(9),),
              Container(
                height: size?.hp(5),
                width: size?.wp(53),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextButton(
                  onPressed: (){},
                  child: Text('Start',
                    textScaleFactor: 1,
                    style: TextStyle(
                        color: thirdColor,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
