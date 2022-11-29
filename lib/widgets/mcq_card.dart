import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';

class McqCard extends StatelessWidget {

  late String name;
  late Color textColor;
  late Color subColor;
  late var model;
  late String? text;
  late Color? color;
  late Function() action;

  McqCard({
    required this.name,
    required this.model,
    this.text,
    this.color,
    required this.textColor,
    required this.subColor,
    required this.action

});

  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      width: size?.wp(95),
      height: size?.hp(13),
      decoration: BoxDecoration(
        color: thirdColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: grey2)
      ),
      child: TextButton(
        onPressed: action,
        child: ListTile(
          leading: Image.asset('assets/mcqcard.png'),
          title: Text(name,
            textScaleFactor: 1,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.access_time_rounded,size: 12.5,),
              Text('  20 MCQ\'s',
                textScaleFactor: 1,
                style: TextStyle(
                  color: subColor,
                  fontWeight: FontWeight.w400
                ),
              ),
            ],
          ),
          trailing: Column(
            children: [
              Icon(model,color: color,),
              Text(text!,
                textScaleFactor: .58,
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
