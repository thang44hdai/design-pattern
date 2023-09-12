import 'package:bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _counterBloc = counter_bloc();

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            StreamBuilder<int>(
              stream: _counterBloc.counterStream,
              builder: (context, snapshot) {
                return Text(
                  '${snapshot.data ?? 0}',
                  style: TextStyle(fontSize: 48),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _counterBloc.increment(),
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
