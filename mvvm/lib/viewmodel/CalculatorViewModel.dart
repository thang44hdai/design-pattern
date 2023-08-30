import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:mvvm/model/CalculatorModel.dart';

class CalculatorViewModel extends ChangeNotifier {
  final CalculatorModel model = CalculatorModel();

  double get result => model.result??10;

  void add(double a, double b) {
    model.result = a + b;
    notifyListeners();
  }

  void subtract(double a, double b) {
    model.result = a - b;
    notifyListeners();
  }

  void multi(double a, double b) {
    model.result = a * b;
    notifyListeners();
  }
}
