import 'package:flutter/material.dart';
import 'package:mvc/controller/control.dart';

class view_app extends StatefulWidget {
  const view_app({super.key});

  @override
  State<view_app> createState() => _view_appState();
}

class _view_appState extends State<view_app> {
  Controller _controller = Controller();
  int cnt=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("MVC APP"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '${_controller.counter}',
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _controller.increment();
                          //cnt++;
                        });
                      },
                      child: const Text("Increment")),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _controller.decrement();
                        //cnt--;
                      });
                    },
                    child: const Text("Decrement"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class style {
  const style();
}
