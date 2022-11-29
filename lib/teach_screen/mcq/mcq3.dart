import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';

class McqThree extends StatefulWidget {
  const McqThree({Key? key}) : super(key: key);

  @override
  State<McqThree> createState() => _McqThreeState();
}

Widget  McqText(String text){
  return Text(text,
    textScaleFactor: 1,
    style: TextStyle(
        color: fourthColor,
        fontWeight: FontWeight.w400
    ),
  );
}

QText(String text){
 return Text(text,
    textScaleFactor: 1.4,
    style: TextStyle(
        fontWeight: FontWeight.w500
    ),
  );
}

class _McqThreeState extends State<McqThree> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
        child: Scaffold(
          backgroundColor: grey1,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(color: primaryColor,thickness: size?.hp(1),height: size?.hp(1),),
              SizedBox(height: size?.hp(1),),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Gametogensis',
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                    ),
                  ),
                  SizedBox(width: size?.wp(23),),
                  TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(grey2),
                    shape: MaterialStateProperty.all(CircleBorder()),
                  ),
                    onPressed: (){
                    Navigator.pop(context);
                    },
                    child: Icon(Icons.close,color: thirdColor,size: 20)
                  ),
      ]
                ),
              SizedBox(height: size?.hp(2),),
              Container(
                width: double.infinity,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QText('Which of these is a major difference'),
                      QText('between oogenesis and'),
                      QText('spermatogenesis?'),
                    ],
                  ),
              ),
              SizedBox(height: size?.hp(31),),
              Container(
                height: size?.hp(36),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: size?.hp(8),
                      width: size?.wp(95),
                      decoration: BoxDecoration(
                        color: thirdColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(
                        onPressed: (){},
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              McqText('  A - Spermatogenesis leads to two sperm, while'),
                              McqText('  oogenesis leads to one egg.')
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size?.hp(8),
                      width: size?.wp(95),
                      decoration: BoxDecoration(
                        color: thirdColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(
                        onPressed: (){},
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              McqText('  B - oogenesis leads to four eggs while'),
                              McqText('  spermatogenesis leads to eight sperm.'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size?.hp(8),
                      width: size?.wp(95),
                      decoration: BoxDecoration(
                        color: thirdColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(
                        onPressed: (){},
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              McqText('  C - Spermatogenesis leads to four sperm, while'),
                              McqText('  oogenesis leads to one egg.'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size?.hp(8),
                      width: size?.wp(95),
                      decoration: BoxDecoration(
                        color: thirdColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(
                        onPressed: (){},
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              McqText('  D - oogenesis leads to two eggs while'),
                              McqText('  spermatogenesis leads to one sperm.'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: size?.hp(8),
                width: double.infinity,
                color: thirdColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 12),
                      width: size?.hp(11),
                      height: size?.wp(8),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(primaryColor),
                        ),
                        onPressed: (){},
                        child: Text('PREV',
                          textScaleFactor: .85,
                          style: TextStyle(
                              color: thirdColor,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    Text('1 / 20',
                      textScaleFactor: 1,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      width: size?.hp(11),
                      height: size?.wp(8),
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(primaryColor),
                        ),
                        onPressed: (){},
                        child: Text('NEXT',
                          textScaleFactor: .85,
                          style: TextStyle(
                              color: thirdColor,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
