import 'package:solid_sample/user_service.dart';

class dataUser implements userService {
  final List<User> l = [];
  @override
  List<User> listUser() {
    return l;
  }

  @override
  void addUser(User user) {
    l.add(user);
  }

  @override
  void deleteUser(int id) {
    if (id < l.length) 
      l.remove(id);
  }
}
