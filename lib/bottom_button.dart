import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  late VoidCallback onTap;
  late String buttonTitle;

  BottomButton({required this.buttonTitle, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kCalculateButtonStyle,
          ),
        ),
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
