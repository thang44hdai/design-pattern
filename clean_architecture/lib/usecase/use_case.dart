import 'package:clean_architecture/repository/repo.dart';
import 'package:clean_architecture/usecase/calculator_result.dart';

class CalculatorUseCase {
  final CalculatorRepository repo = CalculatorRepository();

  CalculatorResult add(double a, double b) {
    return repo.add(a, b);
  }

  CalculatorResult subtract(double a, double b) {
    return repo.subtract(a, b);
  }
}

