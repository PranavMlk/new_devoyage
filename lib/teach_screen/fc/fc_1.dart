import 'package:flutter/material.dart';
import 'package:login_aadi/teach_screen/fc/fc_2.dart';
import 'package:login_aadi/teach_screen/tech_home_screen.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/subject_cards.dart';

import '../../utils/avatar.dart';

class FcOne extends StatefulWidget {
  const FcOne({Key? key}) : super(key: key);

  @override
  State<FcOne> createState() => _FcOneState();
}

class _FcOneState extends State<FcOne> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size= Screen(MediaQuery.of(context).size);
    return SafeArea(
        child: Scaffold(
          backgroundColor: grey1,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: .6,
            backgroundColor: thirdColor,
            title: Container(
              width: size?.wp(35),
                child: Image.asset(companylogo)),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 7),
                  height: size?.hp(5),
                  width: double.infinity,
                  color: thirdColor,
                  child: Row(
                    children: [
                      Container(
                        width: size?.wp(7),
                        child: TextButton(
                            onPressed: (){
                              Navigator.push(
                                  context, PageRouteBuilder(
                                  pageBuilder: (_,__,___)=>TeachHome()));
                            },
                            child: Icon(Icons.menu_book,color: primaryColor,size: 20,)),
                      ),
                      SizedBox(width: size?.wp(2.2),),
                      Text('/ ',
                        textScaleFactor: 1,
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text('Flash Card',
                        textScaleFactor: 1,
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: size?.hp(83),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal:10),
                    child:ListView(
                      children: [
                        SizedBox(height: size?.hp(1),),
                        SubjectCard(text1: 'Human Anatomy', text2: '120 Cards', action: (){
                          Navigator.push(
                              context, PageRouteBuilder(
                              pageBuilder: (_,__,___)=>FcTwo()));
                        }),
                        SubjectCard(text1: 'Physiology', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Biochemistry', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Pharmacology', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Pathology', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Microbiology', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Forensic Medicine and tocxicology', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Community Medicine', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'General Medicine', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Respiratory Medicine', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Pediatrics', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Psychiatry', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Dermatology,Venereology and Leprosy', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Physical Medicine and Rehabilitation', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'General surgery', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Ophthalmology', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Otorhinolaryngology', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Obstetrics and Gynaecology', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Orthopedics', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Anesthesiology', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Radiodiagnosis', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Radiotherapy', text2: '120 Cards', action: (){}),
                        SubjectCard(text1: 'Dentistry', text2: '120 Cards', action: (){}),
                        SizedBox(height: size?.hp(1),)
                      ],
                    )
                )
      ]
    ),
          ),
    ),
    );
  }
}
