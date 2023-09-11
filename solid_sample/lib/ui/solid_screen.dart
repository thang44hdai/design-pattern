import 'dart:math';
import 'package:flutter/material.dart';
import 'package:solid_sample/dataUser.dart';
import '../user_service.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

int idx = 0;

class _MyAppState extends State<MyApp> {
  final userService = dataUser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Management App'),
          backgroundColor: Colors.amber,
        ),
        body: UserListWidget(UserService: userService),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final user = User(idx++, "Test Name");
            userService.addUser(user);
            setState(() {});
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class UserListWidget extends StatefulWidget {
  final userService UserService;

  UserListWidget({required this.UserService});

  @override
  _UserListWidgetState createState() => _UserListWidgetState();
}

class _UserListWidgetState extends State<UserListWidget> {
  @override
  Widget build(BuildContext context) {
    final users = widget.UserService.listUser();
    final TextEditingController btnInput = TextEditingController();
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return ListTile(
          title: Text(user.name + "\n id: " + user.id.toString()),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              widget.UserService.deleteUser(user.id);
              idx--;
              setState(() {});
            },
          ),
        );
      },
    );

  }
}
