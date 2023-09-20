import 'package:flutter/material.dart';
import 'package:navigator/model/food.dart';

class result_screen extends StatefulWidget {
  List<food> result = [];
  result_screen(this.result);

  @override
  State<result_screen> createState() => _result_screenState();
}

class _result_screenState extends State<result_screen> {
  @override
  Widget build(BuildContext context) {
    List<food> Food = [];
    for (food i in widget.result) {
      if (i.check == true) Food.add(i);
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade400,
        title: Text("Return to Order"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_return),
        ),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: Food.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: SizedBox(
                      width: 50,
                      height: 100,
                      child: Image(
                        image: AssetImage(Food[index].image),
                      )),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Food[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        Food[index].description,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
