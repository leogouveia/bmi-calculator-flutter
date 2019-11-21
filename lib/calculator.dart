import 'dart:math';

import 'package:flutter/material.dart';

class Calculator {
  Calculator({@required this.height, @required this.weight})
      : assert(height != null),
        assert(weight != null) {
    _calculateBMI();
  }

  final int height;
  final int weight;

  double _bmi;

  void _calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    }
    if (_bmi >= 18.5) {
      return 'Normal';
    }
    return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
    if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good Job!';
    }
    return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}
