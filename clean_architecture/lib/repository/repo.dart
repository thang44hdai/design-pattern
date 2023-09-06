import 'package:clean_architecture/usecase/use_case.dart';

class CalculatorRepository {
  CalculatorResult add(double a, double b) {
    return CalculatorResult(a + b);
  }

  CalculatorResult subtract(double a, double b) {
    return CalculatorResult(a - b);
  }
}
