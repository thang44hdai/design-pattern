import 'package:clean_architecture/usecase/calculator_result.dart';
import 'package:clean_architecture/usecase/use_case.dart';
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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      double a = double.parse(_controllerA.text);
                      double b = double.parse(_controllerB.text);
                      CalculatorResult calcResult = calculator.add(a, b);
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
                      CalculatorResult calcResult = calculator.subtract(a, b);
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
              SizedBox(
                height: 20,
              ),
              Text(
                'Kết quả: $result',
                style: TextStyle(fontSize: 24),
              ),
            ]),
      ),
    );
  }
}
