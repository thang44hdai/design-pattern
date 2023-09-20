import 'package:flutter/material.dart';
import 'package:navigator/ui/order_screen.dart';

class main_screen extends StatelessWidget {
  const main_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade400,
      body: Column(
        children: [
          SizedBox(height: 50),
          SizedBox(
            child: Row(
              children: [
                SizedBox(width: 50),
                Image(
                  image: AssetImage("assets/staff.png"),
                  height: 300,
                  width: 300,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => order_screen()));
            },
            style: ElevatedButton.styleFrom(primary: Colors.red[700]),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
    );
  }
}
