class User {
  int id = 0;
  String name = "sdfsdf";
  User({required id, required name});
}

abstract class userService {
  List<User> listUser();
  void addUser(User user);
  void deleteUser(int id);
}
