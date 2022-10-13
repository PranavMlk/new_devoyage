import 'package:flutter/material.dart';

import '../utils/colors/colors.dart';

class VisibilityIcon extends StatelessWidget {
  const VisibilityIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.visibility_off_outlined,
      color: grey2,
      size:20,
    );
  }
}
