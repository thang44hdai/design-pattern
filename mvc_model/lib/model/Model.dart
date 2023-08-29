class Model {
  static int cnt = 0;

  static get counter {
    return cnt;
  }

  static int increment() => ++cnt;

  static int decrement() => --cnt;
}
