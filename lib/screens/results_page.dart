import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/button_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({this.bmiResult,this.bmiText,this.interpretation});

  final String bmiResult;
  final String bmiText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kC2,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiText.toUpperCase(),
                    style: kResultText,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIText,
                  ),
                  Text(
                    interpretation,
                    style: kBodyText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: (){
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
