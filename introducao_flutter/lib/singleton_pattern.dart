class SingletonPattern {
  int? id;
  static SingletonPattern? _instance;

  SingletonPattern._();

  static SingletonPattern get instance {
    _instance ??= SingletonPattern._();
    return _instance!;
  }
}
