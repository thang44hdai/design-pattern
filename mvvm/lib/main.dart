import 'package:flutter/material.dart';
import 'package:mvvm/ui/CalculatorScreen.dart';
import 'package:provider/provider.dart';
import 'package:mvvm/viewmodel/CalculatorViewModel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CalculatorViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CalculatorScreen(),
      ),
    ),
  );
}
// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "MVVM",
//       home: screenView(),
//     );
//   }
// }



