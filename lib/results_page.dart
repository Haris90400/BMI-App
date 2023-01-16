import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiresult,
      required this.textResult,
      required this.interpretaion});
  final String bmiresult;
  final String textResult;
  final String interpretaion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Expanded(
                child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text('Your Result', style: kYourResultStyle)),
              ),
            ),
            Expanded(
              flex: 5,
              child: reusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(textResult.toUpperCase(), style: kRseultTextStyle),
                    Text(
                      bmiresult,
                      style: kBMIReadingStyle,
                    ),
                    Text(
                      interpretaion,
                      style: kInterpretaionStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                onPress: () {},
              ),
            ),
            BottomButton(
                buttonTitle: "RE-CALCULATE",
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
