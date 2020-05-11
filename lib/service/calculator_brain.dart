import 'dart:math';

import 'package:bmi_calculator/model/enums/gender.dart';

class CalculatorBrain {
  final int height;
  final int weight;
  final int age;
  final Gender gender;

  double _bmi;
  String _type;
  String _interpretation;

  CalculatorBrain(this.height, this.weight, this.age, this.gender) {
    _calculateBMI();
  }

  _calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    _setType();
  }

  _setType() {
    if (_bmi > 25) {
      _type = 'Overweight';
      _interpretation =
          'You are overweight. You need to do something about it.';
    } else if (_bmi > 18.5 && _bmi <= 25) {
      _type = 'Normal';
      _interpretation = 'You are just okay with you BMI. Keep up like this.';
    } else {
      _type = 'Underweight';
      _interpretation = 'Your BMI result quite small, you should eat more.';
    }
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getType() {
    return _type;
  }

  String getInterpretation() {
    return _interpretation;
  }
}
