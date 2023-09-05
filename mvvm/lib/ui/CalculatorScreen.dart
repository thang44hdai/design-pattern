import 'package:flutter/material.dart';
import 'package:mvvm/viewmodel/CalculatorViewModel.dart';
import 'package:provider/provider.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  // void initState() {
  //   super.initState();
  //   // you can uncomment this to get all batman movies when the page is loaded
  //   Provider.of<CalculatorViewModel>(context, listen: false).add(1, 2);
  // }
  final TextEditingController btn_num1 = TextEditingController();
  final TextEditingController btn_num2 = TextEditingController();
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
                controller: btn_num1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Mời bạn nhập vào giá trị a: ",
                ),
              ),
              TextField(
                controller: btn_num2,
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
                      final double numA = double.tryParse(btn_num1.text) ?? 0.0;
                      final double numB = double.tryParse(btn_num2.text) ?? 0.0;
                      Provider.of<CalculatorViewModel>(context, listen: false)
                          .add(numA, numB);
                    },
                    child: Text('Add'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final double numA = double.tryParse(btn_num1.text) ?? 0.0;
                      final double numB = double.tryParse(btn_num2.text) ?? 0.0;
                      Provider.of<CalculatorViewModel>(context, listen: false)
                          .subtract(numA, numB);
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
