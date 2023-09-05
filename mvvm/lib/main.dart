import 'package:flutter/material.dart';
import 'package:mvvm/ui/CalculatorScreen.dart';
import 'package:provider/provider.dart';
import 'package:mvvm/viewmodel/CalculatorViewModel.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Calculator',
        home: CalculatorScreen(),
      ),
    );
  }
}
