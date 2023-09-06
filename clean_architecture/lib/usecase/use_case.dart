import 'package:clean_architecture/repository/repo.dart';

class CalculatorUseCase {
  final CalculatorRepository repo = CalculatorRepository();

  CalculatorResult add(double a, double b) {
    return repo.add(a, b);
  }

  CalculatorResult subtract(double a, double b) {
    return repo.subtract(a, b);
  }
}

class CalculatorResult {
  final double result;
  
  CalculatorResult(this.result);
}
