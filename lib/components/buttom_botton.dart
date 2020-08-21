import 'package:flutter/material.dart';
import '../constants.dart';

class ButtomBotton extends StatelessWidget {
  ButtomBotton({@required this.bottonText, @required this.onTap});

  final Function onTap;
  final String bottonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            bottonText,
            style: kLargeBottonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}
