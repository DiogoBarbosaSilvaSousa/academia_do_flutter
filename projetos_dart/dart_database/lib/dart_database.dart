import 'package:dart_database/database.dart';

Future<void> main() async {
  final database = Database();
  var mysqlConnection = await database.openConnection();

  print(mysqlConnection.toString());
}
