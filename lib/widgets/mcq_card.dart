import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';

class McqCard extends StatelessWidget {

  late String name;
  late var model;
  late String? text;
  late Color? color;

  McqCard({
    required this.name,
    required this.model,
    this.text,
    this.color

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
      ),
      child: TextButton(
        onPressed: (){},
        child: ListTile(
          leading: Image.asset('assets/mcqcard.png'),
          title: Text(name,
            textScaleFactor: 1,
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold
            ),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.access_time_rounded,size: 12.5,),
              Text('  20 MCQ\'s',
                textScaleFactor: 1,
                style: TextStyle(
                  color: grey2,
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
