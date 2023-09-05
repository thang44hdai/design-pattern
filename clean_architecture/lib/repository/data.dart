import 'package:clean_architecture/domain.dart';

class CalculatorRepository {
  CalculatorResult calculateSum(double a, double b) {
    double result = a + b;
    return CalculatorResult(result);
  }

  CalculatorResult calculateDifference(double a, double b) {
    double result = a - b;
    return CalculatorResult(result);
  }
}
