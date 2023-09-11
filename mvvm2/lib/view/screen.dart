import 'package:flutter/material.dart';
import 'package:mvvm2/model/member.dart';
import 'package:mvvm2/viewmodel/viewmodel_member.dart';
import 'package:provider/provider.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  final TextEditingController edtName = TextEditingController();
  final TextEditingController edtAge = TextEditingController();
  final TextEditingController edtGenerate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final view_model = Provider.of<viewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quản lí danh sách thành viên",
          style: TextStyle(
            color: Colors.amberAccent,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: view_model.model.list.length,
              itemBuilder: (context, index) {
                final mem = view_model.model.list[index];
                return ListTile(
                  title: Text("Name   : " + mem.name + "\nAge       : " + mem.age + "\nGender : " + mem.gen),
                  trailing: IconButton(
                    icon: Icon(Icons.people),
                    onPressed: () {},
                  ),
                );
              },
            ),
          ),
          //ListView(),
          TextField(
            controller: edtName,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(labelText: "Mời bạn nhập tên:"),
          ),
          TextField(
            controller: edtAge,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(labelText: "Mời bạn nhập tuổi:"),
          ),
          TextField(
            controller: edtGenerate,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(labelText: "Mời bạn nhập giới tính:"),
          ),
          ElevatedButton(
            onPressed: () {
              view_model
                  .add(member(edtName.text, edtAge.text, edtGenerate.text));
              edtName.text = edtAge.text = edtGenerate.text = "";
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.deepPurple),
            ),
            child: Text(
              "Thêm thành viên",
              style: TextStyle(
                color: Colors.amberAccent,
                //background: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
