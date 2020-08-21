import 'package:bmi_calculator/components/card_layout.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/buttom_botton.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Results',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveContainerColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      args.resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      args.bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      args.interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            ButtomBotton(
              bottonText: 'Re-Calculate',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}

class ScreenArguments {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ScreenArguments({this.bmiResult, this.resultText, this.interpretation});
}
