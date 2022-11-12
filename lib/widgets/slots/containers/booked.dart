import 'package:flutter/material.dart';
import 'package:login_aadi/utils/responsive.dart';

import '../../../utils/colors/colors.dart';
class Booked extends StatefulWidget {
  const Booked({Key? key}) : super(key: key);

  @override
  State<Booked> createState() => _BookedState();
}

class _BookedState extends State<Booked> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      alignment: Alignment.center,
      width: size?.wp(26.5),
      decoration: BoxDecoration(
          color: grey3,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
          boxShadow:[BoxShadow(
              color: grey3,
              blurRadius: 3,
              blurStyle: BlurStyle.normal,
              offset: Offset(0,1)
          )
          ]
      ),
      child: Text('Booked',
        textScaleFactor: .85,
        style: TextStyle(
          fontFamily: 'Roboto',
          color: grey1,
        ),
      ),
    );
  }
}
