import 'package:firebase/models/user.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  List<user> list_user = [];
  TextEditingController _name = TextEditingController();
  TextEditingController _id = TextEditingController();
  TextEditingController _class = TextEditingController();

  // void add_data(String name, String id, String Class) {
  //   database.child("user").set({
  //     Class: {name, id}
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List User"),
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: list_user.length,
                  itemBuilder: (context, index) {
                    user User = list_user[index];
                    return Card(
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${User.name}"),
                            Text("ID: ${User.id}"),
                            Text("Class: ${User.Class}"),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Column(
                children: [
                  TextField(
                    controller: _name,
                    decoration: InputDecoration(hintText: "Name:"),
                  ),
                  TextField(
                    controller: _id,
                    decoration: InputDecoration(hintText: "ID:"),
                  ),
                  TextField(
                    controller: _class,
                    decoration: InputDecoration(hintText: "Class:"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        list_user.add(user(_name.text, _id.text, _class.text));
                        // final database = FirebaseDatabase.instance.ref();
                        // database.child("user").set({
                        //   _class.text: {_name.text, _id.text}
                        // });
                        _name.text = "";
                        _id.text = "";
                        _class.text = "";
                      });
                    },
                    child: Text("ADD"),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
