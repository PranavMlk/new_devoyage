import 'package:flutter/material.dart';

import '../utils/colors/colors.dart';

class EmalIcons extends StatelessWidget {
  const EmalIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Icon(Icons.alternate_email_sharp,
      color:primaryColor,
      size: 25,
    );
  }
}
