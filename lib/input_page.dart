import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_card.dart';
import 'card_layout.dart';

const bottomContainerHeight = 80.0;
const containerColor = Color(0xFF1D1E33);
const inactiveContainerColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveContainerColor;
  Color femaleCardColor = inactiveContainerColor;

  void updateColor(Gender gender) {
    if (gender == Gender.Male) {
      maleCardColor = containerColor;
      femaleCardColor = inactiveContainerColor;
    } else {
      maleCardColor = inactiveContainerColor;
      femaleCardColor = containerColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.Male);
                      });
                    },
                    child: ReusableCard(
                      color: maleCardColor,
                      cardChild: GenderCard(
                        icon: FontAwesomeIcons.mars,
                        iconText: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.Female);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      cardChild: GenderCard(
                        icon: FontAwesomeIcons.venus,
                        iconText: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: containerColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: containerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: containerColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
