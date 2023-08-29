import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: BodyWid(),
    );
  }
}

class BodyWid extends StatefulWidget {
  const BodyWid({super.key});

  @override
  State<BodyWid> createState() => _BodyWidState();
}

class _BodyWidState extends State<BodyWid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText: "Email: ",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              hintText: "Password: ",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 200,
            height: 40,
            child: TextButton(
              onPressed: () {},
              child: Text("Log In"),
            ),
          )
        ],
      ),
    );
  }
}
