import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class GenderCard extends StatelessWidget {
  final IconData icon;
  final String iconText;

  GenderCard({this.icon, this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
