import 'package:bmi_calculator/model/constants.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const CalculateButton(
      {Key key, @required this.text, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kResultStyle,
          ),
        ),
        color: kChinColor,
        margin: EdgeInsets.only(top: 10.0),
//              padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kChinHeight,
      ),
    );
  }
}
