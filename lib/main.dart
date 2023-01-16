import 'package:flutter/material.dart';
import 'pallete.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // ignore: deprecated_member_use
        primarySwatch: Palette.kToDark,
        canvasColor: Color(0xFF090C22),
      ),
      home: InputPage(),
    );
  }
}
