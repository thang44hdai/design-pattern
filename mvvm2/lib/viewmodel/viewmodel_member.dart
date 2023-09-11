import 'package:flutter/material.dart';
import 'package:mvvm2/model/list_mem.dart';
import 'package:mvvm2/model/member.dart';

class viewModel extends ChangeNotifier {
  final model = list_member();

  void init() {
    model.list.add(member("Nguyen QUang Thang", "20", "Male"));
    model.list.add(member("Nguyen QUang Thang", "20", "Male"));
    model.list.add(member("Nguyen QUang Thang", "20", "Male"));
    model.list.add(member("Nguyen QUang Thang", "20", "Male"));
    model.list.add(member("Nguyen QUang Thang", "20", "Male"));
    model.list.add(member("Nguyen QUang Thang", "20", "Male"));
  }

  void add(member x) {
    model.list.add(x);
    notifyListeners();
  }

  void delete(member x) {
    model.list.removeWhere((element) => element.name == x.name);
    notifyListeners();
  }
}
