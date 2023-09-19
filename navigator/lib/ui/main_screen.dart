import 'package:flutter/material.dart';
import 'package:navigator/ui/order_screen.dart';

class main_screen extends StatelessWidget {
  const main_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => order_screen()));
          },
          child: Text("Click To Order"),
        ),
      ),
    );
  }
}
