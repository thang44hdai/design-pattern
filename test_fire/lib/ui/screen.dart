import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../models/user.dart';

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

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> add_data(String name, String id, String CLass) async {
    try {
      await firestore.collection('users').doc(name).set({
        'name': name,
        'id': id,
        'class': CLass,
      });
    } catch (e) {
      print('Lỗi khi thêm dữ liệu: $e');
    }
    _name.text = "";
    _id.text = "";
    _class.text = "";
  }

  Future<void> delete_data(String data) async {
    try {
      await firestore.collection('users').doc(data).delete();
    } catch (e) {
      print("Loi");
    }
  }

  Future<void> reset_data() async {
    try {
      await firestore.collection('users').get().then((QuerySnapshot snapshot) {
        snapshot.docs.forEach((DocumentSnapshot document) {
          final Map<String, dynamic> mp =
              document.data() as Map<String, dynamic>;
          list_user.add(user(mp['name'], mp['id'], mp['class']));
        });
      });
    } catch (e) {
      print("object");
    }
    setState(() {});
  }

  @override
  void initState() {
    reset_data();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List User"),
      ),
      body: Column(
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
                    trailing: IconButton(
                      onPressed: () {
                        list_user.clear();
                        delete_data(User.name);
                        reset_data();
                      },
                      icon: Icon(Icons.delete),
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
                    add_data(_name.text, _id.text, _class.text);
                    list_user.add(user(_name.text, _id.text, _class.text));
                  });
                },
                child: Text("ADD"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
