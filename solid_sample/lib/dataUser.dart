import 'package:flutter/material.dart';
import 'package:solid_sample/user_service.dart';

class dataUser extends userService {
  final List<User> l = [];
  @override
  List<User> listUser() {
    return l;
  }

  @override
  void addUser(User user) {
    l.add(user);
  }

  @override
  void deleteUser(int id) {
    l.remove(id);
    Notification;
  }
}
