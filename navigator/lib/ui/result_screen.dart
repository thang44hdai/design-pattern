import 'package:flutter/material.dart';

class result_screen extends StatefulWidget {
  const result_screen({super.key});

  @override
  State<result_screen> createState() => _result_screenState();
}

class _result_screenState extends State<result_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Return to Order"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_return),
        ),
      ),
    );
  }
}
