import 'package:flutter/material.dart';
import 'package:mvvm/viewmodel/CalculatorViewModel.dart';
import 'package:provider/provider.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calculatorViewModel = Provider.of<CalculatorViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                calculatorViewModel.updateA(double.parse(value));
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nhập số a'),
            ),
            TextField(
              onChanged: (value) {
                calculatorViewModel.updateB(double.parse(value));
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nhập số b'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    calculatorViewModel.add();
                  },
                  child: Text('Add'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    calculatorViewModel.subtract();
                  },
                  child: Text('Subtract'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Kết quả: ${calculatorViewModel.model.result.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
