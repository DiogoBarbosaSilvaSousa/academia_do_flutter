import 'package:mysql1/mysql1.dart';

class Database {
  Future<MySqlConnection> openConnection() {
    final settings = ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'root',
        password: '123456',
        db: 'dart_mysql');

    return MySqlConnection.connect(settings);
  }
}
