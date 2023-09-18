import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              child: Container(
                height: 30,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Description Pizza",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Mized Pizza with beef, chilli and cheese!!!",
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "4.8",
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
              ],
            ),
            Image(
              image: AssetImage("assets/pizza.png"),
            ),
            Text(
              "Bánh pizza là một món ăn nổi tiếng trên toàn thế giới. Nó bắt nguồn từ Ý và đã trở thành một phần không thể thiếu trong ẩm thực quốc tế.",
              style: TextStyle(),
            ),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Calories"),
                    SizedBox(height: 10),
                    Text(
                      "120",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Volume"),
                    SizedBox(height: 10),
                    Text(
                      "12 inch",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("Distance"),
                    SizedBox(height: 10),
                    Text(
                      "1 KM",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.red, minimumSize: Size(250, 40)),
              child: Text(
                "Click to buy >>>>>",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
