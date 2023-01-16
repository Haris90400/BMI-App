import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconData icon;
  String gender;
  IconContent(this.icon, this.gender);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(gender, style: kLabelTextStyle)
      ],
    );
  }
}
