import 'package:clean_architecture/data.dart';

class CalculatorUseCase {
  final CalculatorRepository _repository = CalculatorRepository();

  CalculatorResult calculateSum(double a, double b) {
    return _repository.calculateSum(a, b);
  }

  CalculatorResult calculateDifference(double a, double b) {
    return _repository.calculateDifference(a, b);
  }
}

class CalculatorResult {
  final double result;
  final String operation;

  CalculatorResult(this.result, this.operation);
}
