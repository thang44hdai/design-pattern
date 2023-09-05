import 'package:clean_architecture/domain.dart';

class CalculatorRepository {
  CalculatorResult calculateSum(double a, double b) {
    double result = a + b;
    String operation = '$a + $b = $result';
    return CalculatorResult(result, operation);
  }

  CalculatorResult calculateDifference(double a, double b) {
    double result = a - b;
    String operation = '$a - $b = $result';
    return CalculatorResult(result, operation);
  }
}
