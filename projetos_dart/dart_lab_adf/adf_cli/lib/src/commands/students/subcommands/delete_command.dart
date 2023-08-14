import 'dart:io';

import 'package:args/command_runner.dart';

import '../../../repositories/student_dio_repository.dart';

class DeleteCommand extends Command {
  final StudentDioRepository studentRepository;

  @override
  // TODO: implement description
  String get description => 'Delete Student by id';

  @override
  // TODO: implement name
  String get name => 'delete';

  DeleteCommand(this.studentRepository) {
    argParser.addOption('id', help: 'Student ID', abbr: 'i');
  }

  @override
  Future<void> run() async {
    print('Aguarde...');
    final id = int.tryParse(argResults?['id']);

    if (id == null) {
      print('por favor informe o id do aluno com o comando --id 0 ou -i 0');
      return;
    }

    final student = await studentRepository.findById(id);

    questionYesNo(
        question: 'Confirma a exclusão do aluno ${student.name} ?',
        funcYes: () async {
          print('Aguarde, deletando dados do aluno');
          print(
              '-----------------------------------------------------------------');

          await studentRepository.deletedById(id);

          print(
              '-----------------------------------------------------------------');
          print('Aluno deletado com sucesso');
          print(
              '-----------------------------------------------------------------');
        },
        funcNo: () {
          print(
              '-----------------------------------------------------------------');
          print('Operação cancelada');
          print(
              '-----------------------------------------------------------------');
        });
  }

  void questionYesNo(
      {required String question,
      required Function funcYes,
      required Function funcNo}) {
    bool testValidate = false;
    do {
      print('$question (S ou N)');
      final resp = stdin.readLineSync();
      final respSanit = resp?.toLowerCase().trim() ?? '';

      if (respSanit == 's') {
        funcYes();
        testValidate = true;
      }

      if (respSanit == 'n') {
        funcNo();
        testValidate = true;
      }
    } while (testValidate == false);
  }
}
