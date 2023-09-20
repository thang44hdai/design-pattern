import 'package:flutter/material.dart';
import 'package:navigator/model/food.dart';
import 'package:navigator/ui/result_screen.dart';

void init(List<food> list_food) {
  list_food.add(food(
      "Cocacola",
      "assets/coca.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất.",
      false));
  list_food.add(food(
      "Pepsi",
      "assets/pepsi.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất.",
      false));
  list_food.add(food(
      "Trà sữa matcha",
      "assets/matcha.jpeg",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất.",
      false));
  list_food.add(food(
      "Bánh mì",
      "assets/banhmi.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất.",
      false));
  list_food.add(food(
      "Hamburger",
      "assets/ham.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất.",
      false));
  list_food.add(food(
      "Pizza",
      "assets/pizza.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất.",
      false));
  list_food.add(food(
      "Donut",
      "assets/donut.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất.",
      false));
  list_food.add(food(
      "Cocacola",
      "assets/coca.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất.",
      false));
  list_food.add(food(
      "Pepsi",
      "assets/pepsi.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất.",
      false));
  list_food.add(food(
      "Trà sữa matcha",
      "assets/matcha.jpeg",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất.",
      false));
  list_food.add(food(
      "Bánh mì",
      "assets/banhmi.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất.",
      false));
  list_food.add(food(
      "Hamburger",
      "assets/ham.png",
      "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất.",
      false));
}

class order_screen extends StatefulWidget {
  const order_screen({super.key});

  @override
  State<order_screen> createState() => _order_screenState();
}

class _order_screenState extends State<order_screen> {
  List<food> list_food = [];
  @override
  Widget build(BuildContext context) {
    List<food> picked = [];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade400,
        leading: IconButton(
          icon: Icon(Icons.keyboard_return),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Menu"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: list_food.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: SizedBox(
                    width: 50,
                    height: 100,
                    child: Image(
                      image: AssetImage(list_food[index].image),
                    )),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list_food[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      list_food[index].description,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                trailing: Checkbox(
                  value: list_food[index].check,
                  onChanged: (bool? value) {
                    setState(() {
                      list_food[index].check = value!;
                      if (value == true) {
                        picked.add(list_food[index]);
                      } else {
                        if (picked.contains(list_food[index])) {
                          picked.removeWhere(
                              (element) => element == list_food[index]);
                        }
                      }
                    });
                  },
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => result_screen(list_food)));
        },
        backgroundColor: Colors.red.shade400,
        child: Icon(Icons.skip_next_rounded),
      ),
    );
  }

  @override
  void initState() {
    init(list_food);
    super.initState();
  }
}
