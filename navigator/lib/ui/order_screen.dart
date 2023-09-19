import 'package:flutter/material.dart';
import 'package:navigator/ui/result_screen.dart';

class order_screen extends StatefulWidget {
  const order_screen({super.key});

  @override
  State<order_screen> createState() => _order_screenState();
}

class _order_screenState extends State<order_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_return),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Menu"),
      ),
      body: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => result_screen(),
            ),
          );
        },
      ),
    );
  }
}
