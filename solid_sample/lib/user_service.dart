class User {
  int id = 0;
  String name = "";
  User(int x, String y) {
    this.id = x;
    this.name = y;
  } 
}

abstract class userService {
  List<User> listUser();
  void addUser(User user);
  void deleteUser(int id);
}
