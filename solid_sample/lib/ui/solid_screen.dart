import 'package:flutter/material.dart';

class solidScreen extends StatefulWidget {
  const solidScreen({super.key});

  @override
  State<solidScreen> createState() => __solidScreenStateState();
}

class __solidScreenStateState extends State<solidScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SOLID SAMPLE"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        
      ),
    );
  }
}