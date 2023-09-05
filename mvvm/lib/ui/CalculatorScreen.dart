import 'package:flutter/material.dart';
import 'package:mvvm/viewmodel/CalculatorViewModel.dart';
import 'package:provider/provider.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController _controllerA = TextEditingController();
  final TextEditingController _controllerB = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final calculatorViewModel = Provider.of<CalculatorViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calculator'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controllerA,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nhập số a'),
            ),
            TextField(
              controller: _controllerB,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nhập số b'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final a = double.parse(_controllerA.text);
                    final b = double.parse(_controllerB.text);
                    calculatorViewModel.add(a, b);
                    _controllerA.text = "";
                    _controllerB.text = "";
                  },
                  child: Text('Add'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    final a = double.parse(_controllerA.text);
                    final b = double.parse(_controllerB.text);
                    calculatorViewModel.subtract(a, b);
                    _controllerA.text = "";
                    _controllerB.text = "";
                  },
                  child: Text('Subtract'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Kết quả: ${calculatorViewModel.model.result}',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
