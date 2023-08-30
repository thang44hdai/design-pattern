import 'package:flutter/material.dart';
import 'package:mvvm/viewmodel/CalculatorViewModel.dart';
import 'package:provider/provider.dart';

class CalculatorScreen extends StatelessWidget {
  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorViewModel(),
      child: Scaffold(
        appBar: AppBar(title: Text('Calculator')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: num1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Mời bạn nhập vào giá trị a: ",
                ),
              ),
              TextField(
                controller: num2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Mời bạn nhập vào giá trị b: ",
                ),
              ),
              SizedBox(height: 16),
              Consumer<CalculatorViewModel>(
                builder: (context, calculator, child) => Text(
                  'Result: ${calculator.model.result}',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      final double numA =
                          double.tryParse(num1.text) ?? 0.0;
                      final double numB =
                          double.tryParse(num2.text) ?? 0.0;
                      Provider.of<CalculatorViewModel>(context, listen: false).add(numA, numB);
                    },
                    child: Text('Add'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final double numA =
                          double.tryParse(num1.text) ?? 0.0;
                      final double numB =
                          double.tryParse(num2.text) ?? 0.0;
                      Provider.of<CalculatorViewModel>(context, listen: false).subtract(numA, numB);
                    },
                    child: Text('Subtract'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
