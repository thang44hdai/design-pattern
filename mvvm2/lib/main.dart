import 'package:flutter/material.dart';
import 'package:mvvm2/view/screen.dart';
import 'package:mvvm2/viewmodel/viewmodel_member.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: screen(),
      ),
    );
  }
}
