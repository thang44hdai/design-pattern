import 'package:flutter/material.dart';
import 'package:mvc_model/view/view.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MVC APP",
      home: view_app(),
    );
  }

}
