import 'package:clean_architecture/domain.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double result = 0;
  String operation = '';
  final TextEditingController _controllerA = TextEditingController();
  final TextEditingController _controllerB = TextEditingController();

  CalculatorUseCase calculator = CalculatorUseCase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Result: $result',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Operation: $operation',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(_controllerA.text);
                    double b = double.parse(_controllerB.text);
                    CalculatorResult calcResult = calculator.calculateSum(a, b);
                    setState(() {
                      result = calcResult.result;
                      operation = calcResult.operation;
                    });
                  },
                  child: Text('Tổng'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(_controllerA.text);
                    double b = double.parse(_controllerB.text);
                    CalculatorResult calcResult = calculator.calculateDifference(a, b);
                    setState(() {
                      result = calcResult.result;
                      operation = calcResult.operation;
                    });
                  },
                  child: Text('Hiệu'),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controllerA,
              decoration: InputDecoration(labelText: 'Số a'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _controllerB,
              decoration: InputDecoration(labelText: 'Số b'),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}
