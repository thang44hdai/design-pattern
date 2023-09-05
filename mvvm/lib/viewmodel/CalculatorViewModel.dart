import 'package:flutter/material.dart';
import 'package:mvvm/model/CalculatorModel.dart';

class CalculatorViewModel extends ChangeNotifier {
  final CalculatorModel model = CalculatorModel(0);
  double a = 0.0;
  double b = 0.0;

  void updateA(double value) {
    a = value;
    notifyListeners();
  }

  void updateB(double value) {
    b = value;
    notifyListeners();
  }

  void add() {
    model.result = a + b;
    notifyListeners();
  }

  void subtract() {
    model.result = a - b;
    notifyListeners();
  }
}
