import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solid_sample/dataUser.dart';
import 'package:solid_sample/user_service.dart';
import 'user_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final userService = dataUser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Management App'),
        ),
        body: UserListWidget(UserService: userService),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final user = User(name: 'Test', id: Random().nextInt(100));
            userService.addUser(user);
            print(userService);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class UserListWidget extends StatelessWidget {
  final userService UserService;

  UserListWidget({required this.UserService});

  @override
  Widget build(BuildContext context) {
    final users = UserService.listUser();

    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return ListTile(
          title: Text(user.name),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              UserService.deleteUser(user.id);
            },
          ),
        );
      },
    );
  }
}
