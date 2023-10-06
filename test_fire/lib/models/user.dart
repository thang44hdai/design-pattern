class user {
  String name = "";
  String id = "";
  String Class = "";

  user(this.name, this.id, this.Class);

  @override
  String toString() {
    return name + " " + id;
  }
}
