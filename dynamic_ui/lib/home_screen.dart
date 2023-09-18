import 'package:dynamic_ui/food.dart';
import 'package:flutter/material.dart';

void init(List<food> list_food) {
  list_food.add(food("Cocacolist_fooda", "assets/coca.png", "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Pepsi", "assets/pepsi.png", "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Trà sữa matcha", "assets/matcha.jpeg", "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Bánh mì", "assets/banhmi.png", "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Hamburger", "assets/ham.png", "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Pizza", "assets/pizza.png", "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Donut", "assets/donut.png", "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Cocacolist_fooda", "assets/coca.png", "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Pepsi", "assets/pepsi.png", "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Trà sữa matcha", "assets/matcha.jpeg", "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Bánh mì", "assets/banhmi.png", "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
  list_food.add(food("Hamburger", "assets/ham.png", "Coca-Cola và Pepsi là hai hãng nước giải khát nổi tiếng trên khắp thế giới. Cả hai đều cung cấp các loại đồ uống ngon và phổ biến. Coca-Cola đã tồn tại từ năm 1886 và là một trong những thương hiệu nước giải khát có tiếng nhất."));
}

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    List<food> list_food = [];
    init(list_food);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Restaurant Menu",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
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
                          ),
                        ),
                        Text(
                          list_food[index].description,
                          style: TextStyle(fontStyle: FontStyle.italic ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.star),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
