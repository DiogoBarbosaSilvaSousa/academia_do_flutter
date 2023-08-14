import 'package:args/command_runner.dart';
import '../../../repositories/student_dio_repository.dart';

class FindByIdCommand extends Command {
  final StudentDioRepository repository;

  @override
  // TODO: implement description
  String get description => 'Find Student By Id';

  @override
  // TODO: implement name
  String get name => 'byId';

  FindByIdCommand(this.repository) {
    argParser.addOption('id', help: 'Student Id', abbr: 'i');
  }

  @override
  Future<void> run() async {
    final id = int.tryParse(argResults?['id'] ?? '');

    if (id == null) {
      print('Por favor envie o id do aluno com o comando --id 0 ou -i 0');
      return;
    }

    print('Aguarde buscando dados...');
    final student = await repository.findById(id);
    print('---------------------------------------------------------------');
    print('Aluno ${student.name}:');
    print('---------------------------------------------------------------');
    print('Nome: ${student.name}');
    print('Idade: ${student.age ?? 'Não informado'}');
    print('Curso:');
    student.nameCourses.forEach(print);
    print('Endereço:');
    print('   ${student.address} (${student.address.zipCode})');
  }
}
