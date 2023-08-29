import 'package:mvc_model/model/Model.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class Controller extends ControllerMVC {
  factory Controller(){
     return _this ??= Controller._();
  }
  static Controller _this = Controller._();
  Controller._();

  int get counter => Model.cnt;

  void increment() {
    Model.increment();
  }

  void decrement() {
    Model.decrement();
  }
}
