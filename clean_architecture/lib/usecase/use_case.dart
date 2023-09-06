import 'package:clean_architecture/repository/repo.dart';

class CalculatorUseCase {
  final CalculatorRepository _repository = CalculatorRepository();

  CalculatorResult add(double a, double b) {
    return _repository.add(a, b);
  }

  CalculatorResult subtract(double a, double b) {
    return _repository.subtract(a, b);
  }
}

class CalculatorResult {
  final double result;
  
  CalculatorResult(this.result);
}
