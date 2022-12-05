import 'package:flutter/material.dart';
import 'package:login_aadi/home_screen/timer_one.dart';
import 'package:login_aadi/home_screen/timer_two.dart';
import 'package:login_aadi/overseas/overseas2.dart';
import 'package:login_aadi/overseas/oversease1.dart';
import 'package:login_aadi/overseas/oversease3.dart';
import 'package:login_aadi/overseas/slot_booked.dart';
import 'package:login_aadi/profile_Screen.dart';
import 'package:login_aadi/splash.dart';
import 'package:login_aadi/teach_screen/cs/cs_1.dart';
import 'package:login_aadi/teach_screen/cs/cs_2.dart';
import 'package:login_aadi/teach_screen/fc/fc_1.dart';
import 'package:login_aadi/teach_screen/fc/fc_2.dart';
import 'package:login_aadi/teach_screen/mcq/mcq2.dart';
import 'package:login_aadi/teach_screen/mcq/mcq3.dart';
import 'package:login_aadi/teach_screen/mcq/mcq_1.dart';
import 'package:login_aadi/teach_screen/tech_home_screen.dart';
import 'package:login_aadi/teach_screen/video/video_1.dart';
import 'package:login_aadi/widgets/mcq_card.dart';
import 'package:login_aadi/widgets/subject_cards.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home:TeachHome(),
  ),
  );
}