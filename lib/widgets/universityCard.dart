import 'package:flutter/material.dart';
import 'package:login_aadi/utils/responsive.dart';
import '../utils/colors/colors.dart';
class UniversityCard extends StatelessWidget {
   late String image;
   late String title;
   late String subTitle;
   late String text1;
   late String text1_2;
   late String text2;
   late String text2_2;
   late String text3;
   late String text3_2;
   late String text4;
   late String text4_2;
   late Function() action;
   var styling = new Map();

   UniversityCard({
     required this.image,
     required this.title,
     required this.subTitle,
     required this.text1,
     required this.text1_2,
     required this.text2,
     required this.text2_2,
     required this.text3,
     required this.text3_2,
     required this.text4,
     required this.text4_2,
     required this.action,
     required this.styling,
});

  Screen ? size;

    @override
    Widget build(BuildContext context) {
      size = Screen(MediaQuery.of(context).size);
      return Container(
        width: size?.wp(87),
        height: size?.hp(22.5),
        decoration: BoxDecoration(
            color: thirdColor,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Column(
          children: [
            ListTile(
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
            ),
            Row(
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
            ),
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
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(styling["backgroundcolor"]),shape: MaterialStateProperty.all(StadiumBorder())),
                onPressed: action,
                child: Text('Shortlist',
                  textScaleFactor: 1,
                  style: TextStyle(
                      color: styling["textcolor"]
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}

class CountryButton extends StatelessWidget {
  late String text;
  late Color buttonColor;
  late Color textColor;


  CountryButton({
    required this.text,
    required this.buttonColor,
    required this.textColor
});

  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
        height: size?.hp(4.5),
        width: size?.wp(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7.5),
            ),
            color: buttonColor
        ),
        child: TextButton(
          onPressed: (){},
          child: Text(text,
            textScaleFactor: .8,
            style: TextStyle(
                color: textColor
            ),
          ),
        ),
    );
  }
}


