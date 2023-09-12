import 'dart:async';

class counter_bloc {
  int cnt = 0;
  final counter_controller = StreamController<int>();
  Stream<int> get counterStream => counter_controller.stream;// ra
  int get counter => cnt;
  void increment() {
    counter_controller.sink.add(++cnt);// vào
  }
 
  void dispose() {
    counter_controller.close();
  }
}
