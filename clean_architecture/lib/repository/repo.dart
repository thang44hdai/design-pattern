import 'package:clean_architecture/usecase/use_case.dart';

class CalculatorRepository {
  CalculatorResult add(double a, double b) {
    double result = a + b;
    return CalculatorResult(result);
  }

  CalculatorResult subtract(double a, double b) {
    double result = a - b;
    return CalculatorResult(result);
  }
}
