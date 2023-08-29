import 'package:flutter/foundation.dart';
import 'package:rxdart/subjects.dart';

class LoginViewModel {
  final _emailSubject = BehaviorSubject<String>();
  final _passSubject = BehaviorSubject<String>();
  final _btnSubject = BehaviorSubject<bool>();

  Stream<String> get emailStream => _emailSubject;
  Stream<String> get emailSink => _emailSubject;

  Stream<String> get passStream => _passSubject;
  Stream<String> get passSink => _emailSubject;

  Stream<bool> get btnStream => _btnSubject.stream;
  Stream<bool> get btnSink => _btnSubject.stream;

  LoginViewModel() {
    
  }
}
