import 'package:flutter/material.dart';
import 'package:login_aadi/teach_screen/video/video_1.dart';
import 'package:login_aadi/utils/responsive.dart';

import '../../utils/avatar.dart';
import '../../utils/colors/colors.dart';
import '../../widgets/mcq_card.dart';
import '../tech_home_screen.dart';

class VideoTwo extends StatefulWidget {
  const VideoTwo({Key? key}) : super(key: key);

  @override
  State<VideoTwo> createState() => _VideoTwoState();
}

class _VideoTwoState extends State<VideoTwo> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return  SafeArea(
      child: Scaffold(
        backgroundColor: grey1,
        appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: .6,
        backgroundColor: thirdColor,
        title: Container(
          width: size?.wp(35),
          child: Image.asset(companylogo),
        ),
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
                            child: Icon(Icons.menu_book,color: primaryColor,size: 25,)),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, PageRouteBuilder(pageBuilder: (_,__,___)=>VideoOne()));
                        },
                        child: Row(
                          children: [
                            Text('/ ',
                              textScaleFactor: 1.3,
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text('Video',
                              textScaleFactor: 1.3,
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text('/',
                        textScaleFactor: 1.3,
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(' Human Anatomy',
                        textScaleFactor: 1.3,
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
                  height: size?.hp(84),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal:10),
                  child: ListView(
                      children: [
                        SizedBox(height: size?.hp(1),),
                        McqCard(name: 'Gametogenesis', textColor: primaryColor,subColor: grey2, model: Icon(Icons.lock_open_outlined,color: primaryColor),text: 'FREE', action: () {  },),
                        SizedBox(height: size?.hp(1),),
                        McqCard(name: 'Epithelium', textColor: grey1,subColor: grey1, model:Image.asset('assets/crown.png'),text: '', action: () {  },),
                        SizedBox(height: size?.hp(1),),
                        McqCard(name: 'History of Glance', model: Image.asset('assets/crown.png'), textColor: grey1, subColor: grey1,text: '', action: () {  },),
                        SizedBox(height: size?.hp(1),),
                        McqCard(name: 'Muscle & Cartilages', model: Image.asset('assets/crown.png'), textColor: grey1, subColor: grey1,text: '', action: () {  },),
                        SizedBox(height: size?.hp(1),),
                        McqCard(name: 'Spinal code', model: Image.asset('assets/crown.png'), textColor: grey1, subColor: grey1,text: '', action: () {  },),
                        SizedBox(height: size?.hp(1),),
                        McqCard(name: 'Cerebellum', model: Image.asset('assets/crown.png'), textColor: grey1, subColor: grey1,text: '', action: () {  },),
                        SizedBox(height: size?.hp(1),),
                        McqCard(name: 'Osteology', model: Image.asset('assets/crown.png'), textColor: grey1, subColor: grey1,text: '', action: () {  },),
                        SizedBox(height: size?.hp(1),),
                        McqCard(name: 'Nose & Toungue', model: Image.asset('assets/crown.png'), textColor: grey1, subColor: grey1,text: '', action: () {  },),
                        SizedBox(height: size?.hp(1),),
                        McqCard(name: 'Larynx & Pharynx', model: Image.asset('assets/crown.png'), textColor: grey1, subColor: grey1,text: '', action: () {  },),
                        SizedBox(height: size?.hp(1),),
                        McqCard(name: 'Facial nerves', model: Image.asset('assets/crown.png'), textColor: grey1, subColor: grey1,text: '', action: () {  },),
                        SizedBox(height: size?.hp(2),)

                      ]
                  ),
                ),

              ]
          ),
        ),
      ),
    );
  }
}
