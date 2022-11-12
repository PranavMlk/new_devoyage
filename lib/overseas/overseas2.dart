import 'package:flutter/material.dart';
import 'package:login_aadi/overseas/oversease3.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';

class OverseasTwo extends StatefulWidget {
  const OverseasTwo({Key? key}) : super(key: key);

  @override
  State<OverseasTwo> createState() => _OverseasTwoState();
}
Widget listTile(String image,String title,String subTitle){
  return ListTile(
    leading: Image.asset(image),
    title: Text(title,
      textScaleFactor: 1,
      style: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.bold
      ),
    ),
    subtitle: Text(subTitle,
      textScaleFactor: .8,
      style: TextStyle(
          color: grey2,
          fontWeight: FontWeight.bold
      ),
    ),
    trailing: Container(
        margin: EdgeInsets.only(bottom:35),
        child: Icon(Icons.open_in_browser,color: grey2,)),
  );
}

details(
    String text1,String text1_2,
    String text2,String text2_2,
    String text3, String text3_2,
    String text4,String text4_2){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Text(text1,
            textScaleFactor: .9,
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          Text(text1_2,
            textScaleFactor: .6,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: grey2
            ),
          ),
        ],
      ),
      Column(
        children: [
          Text(text2,
            textScaleFactor: .9,
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          Text(text2_2,
            textScaleFactor: .6,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: grey2
            ),
          ),
        ],
      ),
      Column(
        children: [
          Text(text3,
            textScaleFactor: .9,
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          Text(text3_2,
            textScaleFactor: .6,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: grey2
            ),
          ),
        ],
      ),
      Column(
        children: [
          Text(text4,
            textScaleFactor: .9,
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          Text(text4_2,
            textScaleFactor: .6,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: grey2
            ),
          ),
        ],
      ),
    ],
  );
}

countryButton(String text,){
  return TextButton(
    onPressed: (){},
    child: Text(text,
      textScaleFactor: .8,
      style: TextStyle(
          color: thirdColor
      ),
    ),
  );
}

buttonText(){
  return Text('Shortlist',
    textScaleFactor: 1,
    style: TextStyle(
        color: grey2
    ),
  );
}

class _OverseasTwoState extends State<OverseasTwo> {
  Screen ? size;
  var container_visibility =false;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
        child: Scaffold(
          backgroundColor: grey1,
          appBar: AppBar(
            backgroundColor: thirdColor,
            elevation: .2,
            leading: IconButton(
              icon:Icon(Icons.arrow_back_ios_new_outlined,color: primaryColor),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            title: Text('Study Abroad',
              textScaleFactor: 1.3,
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: size?.hp(11),
                  color: thirdColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: size?.wp(5),),
                          Icon(Icons.stars_sharp,color: secondaryColor,size: 27.5,),
                          SizedBox(width: size?.wp(5),),
                          Text('Shortlist Universities',
                            textScaleFactor: 1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(width: size?.wp(34),),
                          Container(
                            height: size?.hp(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: secondaryColor,
                            ),
                            child: Visibility(
                              visible: container_visibility,
                              child: IconButton(
                                  onPressed: (){
                                    Navigator.push(context, PageRouteBuilder(
                                        pageBuilder:(_,__,___)=>OverSeaseThree(),
                                    ),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.arrow_forward,size:20,color: thirdColor,),
                            ),
                          ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: size?.hp(4.5),
                            width: size?.wp(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(7.5),
                              ),
                              color: primaryColor
                            ),
                            child: countryButton('Russia')
                          ),
                          Container(
                            height: size?.hp(4.5),
                            width: size?.wp(16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(7.5),
                                ),
                                color: grey2
                            ),
                            child: countryButton('Georgia')
                          ),
                          Container(
                            height: size?.hp(4.5),
                            width: size?.wp(16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(7.5),
                                ),
                                color: grey2
                            ),
                            child: countryButton('Armenia')
                          ),
                          Container(
                              height: size?.hp(4.5),
                              width: size?.wp(16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(7.5),
                                  ),
                                  color: grey2
                              ),
                              child: countryButton('USA')
                          ),
                          Container(
                              height: size?.hp(4.5),
                              width: size?.wp(16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(7.5),
                                  ),
                                  color: grey2
                              ),
                              child: countryButton('Canada')
                          ),
                          Container(
                              height: size?.hp(4.5),
                              width: size?.wp(16),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(7.5),
                                  ),
                                  color: grey2
                              ),
                              child: countryButton('UK')
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: size?.hp(1),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('9 results',
                          textScaleFactor: .9,
                          style: TextStyle(
                            color: grey2,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(width: size?.wp(7),)
                      ],
                    ),
                    SizedBox(height: size?.hp(1),),
                    Container(
                      width: size?.wp(87),
                      height: size?.hp(22.5),
                      decoration: BoxDecoration(
                        color: thirdColor,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        children: [
                          listTile(
                              'assets/university1.png',
                              'Tver State Medical University',
                              'Tver,Russia'),
                          details(
                              '5178', 'World rank',
                              'Private', 'University type',
                              '6 Yrs', 'Course duration',
                              '684000rs/yr', 'Course fee'),
                          SizedBox(height: size?.hp(1.5),),
                          Container(
                            width: size?.wp(45),
                            height: size?.hp(5),
                            decoration: ShapeDecoration(
                                shape: StadiumBorder(
                                  side: BorderSide(color: grey2)
                                )
                            ),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  container_visibility=!container_visibility;
                                });
                              },
                              child: buttonText()
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size?.hp(2),),
                    Container(
                      width: size?.wp(87),
                      height: size?.hp(22.5),
                      decoration: BoxDecoration(
                          color: thirdColor,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        children: [
                          listTile(
                              'assets/university2.png',
                              'Far Eastern Federal University',
                              'Tver,Russia'),
                          details(
                              '5178', 'World rank',
                              'Private', 'University type',
                              '6 Yrs', 'Course duration',
                              '684000rs/yr', 'Course fee'),
                          SizedBox(height: size?.hp(1.5),),
                          Container(
                            width: size?.wp(45),
                            height: size?.hp(5),
                            decoration: ShapeDecoration(
                                shape: StadiumBorder(
                                    side: BorderSide(color: grey2)
                                )
                            ),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  container_visibility=!container_visibility;
                                });
                              },
                              child: buttonText()
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size?.hp(2),),
                    Container(
                      width: size?.wp(87),
                      height: size?.hp(22.5),
                      decoration: BoxDecoration(
                          color: thirdColor,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        children: [
                          listTile(
                          'assets/university3.png',
                          'Rudan State Medical University',
                          'Tver,Russia'),
                          details(
                              '5178', 'World rank',
                              'Private', 'University type',
                              '6 Yrs', 'Course duration',
                              '684000rs/yr', 'Course fee'),
                          SizedBox(height: size?.hp(1.5),),
                          Container(
                            width: size?.wp(45),
                            height: size?.hp(5),
                            decoration: ShapeDecoration(
                                shape: StadiumBorder(
                                    side: BorderSide(color: grey2)
                                )
                            ),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  container_visibility=!container_visibility;
                                });
                              },
                              child: buttonText()
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size?.hp(2),),
                    Container(
                      width: size?.wp(87),
                      height: size?.hp(22.5),
                      decoration: BoxDecoration(
                          color: thirdColor,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        children: [
                          listTile(
                          'assets/university4.png',
                          'Tyumen State Medical University',
                          'Tver,Russia'),
                          details(
                              '5178', 'World rank',
                              'Private', 'University type',
                              '6 Yrs', 'Course duration',
                              '684000rs/yr', 'Course fee'),
                          SizedBox(height: size?.hp(1.5),),
                          Container(
                            width: size?.wp(45),
                            height: size?.hp(5),
                            decoration: ShapeDecoration(
                                shape: StadiumBorder(
                                    side: BorderSide(color: grey2)
                                )
                            ),
                            child: TextButton(
                              onPressed: (){
                                setState(() {
                                  container_visibility=!container_visibility;
                                });
                              },
                              child: buttonText()
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size?.hp(2),),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
