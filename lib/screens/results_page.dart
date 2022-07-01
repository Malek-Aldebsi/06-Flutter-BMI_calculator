import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Result',
                    style: kTitleTextStyle,
                  ),
                ),
                ReusableCard(
                  colour: kActiveCardColour,
                  cardChild: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            resultText.toUpperCase(),
                            style: kResultTextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            bmiResult,
                            style: kBMITextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            interpretation,
                            textAlign: TextAlign.center,
                            style: kBodyTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
