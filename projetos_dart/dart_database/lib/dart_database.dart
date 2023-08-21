import 'dart:async';

import 'package:dart_database/database.dart';
import 'package:mysql1/mysql1.dart';

Future<void> main() async {
  final database = Database();
  var mysqlConnection = await database.openConnection();

  print(mysqlConnection.toString());

  mysqlConnection.transaction((conn) async {
    var resultadoSelectTransaction = await conn.query('select * from aluno');

    for (var row in resultadoSelectTransaction) {
      print('-----------------------------------');
      print('Resultado por Índice (Transaction)');
      print(row[0]);
      print(row[1]);

      print('-----------------------------------');
      print('Resultado pelo nome da coluna (Transaction)');
      print(row['id']);
      print(row['nome']);
    }
  });

  // var resultadoInsert =
  //     await mysqlConnection.query('insert into aluno(id,nome) values(?,?)', [
  //   null,
  //   'Luciana Rahman',
  // ]);
  // print(resultadoInsert.affectedRows);

  var resultadoSelect = await mysqlConnection.query('select * from aluno');
  print(resultadoSelect.affectedRows);

  for (var row in resultadoSelect) {
    print('-----------------------------------');
    print('Resultado por Índice');
    print(row[0]);
    print(row[1]);

    print('-----------------------------------');
    print('Resultado pelo nome da coluna');
    print(row['id']);
    print(row['nome']);
  }

  try {
    var resultadoInsert = await mysqlConnection.query(
        'update aluno set nome = ? where id = ?', ['Guilherme Rahman', 3]);
    print(resultadoInsert.affectedRows);
  } on MySqlException catch (e, s) {
    print(e);
    print(s);
    print('Erro ao atualizar dados do aluno.');
  }

  var resultadoSelectUnico =
      await mysqlConnection.query('select * from aluno where id = ?', [3]);
  print('-----------------------------------');
  print('Parâmetro único');

  if (resultadoSelectUnico.isNotEmpty) {
    var rowUnico = resultadoSelectUnico.first;
    print('Resultado pelo id');
    print(rowUnico['id']);
    print(rowUnico['nome']);
  }

  await mysqlConnection.close();
}
