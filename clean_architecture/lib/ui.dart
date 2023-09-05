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
        title: Text('Calculator App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Kết quả: $result',
              style: TextStyle(fontSize: 24),
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
                    _controllerA.text = "";
                    _controllerB.text = "";
                    setState(() {
                      result = calcResult.result;
                    });
                  },
                  child: Text('Add'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    double a = double.parse(_controllerA.text);
                    double b = double.parse(_controllerB.text);
                    CalculatorResult calcResult =
                        calculator.calculateDifference(a, b);
                    _controllerA.text = "";
                    _controllerB.text = "";
                    setState(() {
                      result = calcResult.result;
                    });
                  },
                  child: Text('Subtract'),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controllerA,
              decoration: InputDecoration(labelText: 'Nhập số a:'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _controllerB,
              decoration: InputDecoration(labelText: 'Nhập số b:'),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}
