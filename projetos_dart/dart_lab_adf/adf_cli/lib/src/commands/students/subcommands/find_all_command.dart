import 'dart:io';
import 'package:args/command_runner.dart';
import '../../../repositories/student_repository.dart';
import '../../../models/student.dart';

class FindAllCommand extends Command {
  final StudentRepository repository;

  @override
  // TODO: implement description
  String get description => 'Find all Students';

  @override
  // TODO: implement name
  String get name => 'findAll';

  FindAllCommand(this.repository);

  @override
  Future<void> run() async {
    print('Aguarde buscando alunos...');

    //bool testValidate = false;
    // do {
    //   print('Apresentar também os cursos ? S ou N');
    //   final resp = stdin.readLineSync();
    //   String showCourses = resp?.toLowerCase().trim() ?? '';

    //   if (showCourses == 's' || showCourses == 'n') {
    //     showStudents(students, showCourses);
    //     testValidate = true;
    //   }
    // } while (testValidate == false);

    questionYesNo(
        question: 'Apresentar também os cursos ? S ou N',
        funcYes: () async {
          final students = await repository.findAll();
          showStudents(students, 's');
        },
        funcNo: () async {
          final students = await repository.findAll();
          showStudents(students, 'n');
        });
  }

  void questionYesNo(
      {required String question,
      required Function funcYes,
      required Function funcNo}) {
    bool testValidate = false;
    do {
      print(question);
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

  void showStudents(List<Student> students, [String showCourses = 'n']) {
    print('-----------------------------------------------------------------');
    print('Alunos');
    print('-----------------------------------------------------------------');
    for (var student in students) {
      if (showCourses == 's') {
        print(
            '${student.id} - ${student.name} ${student.courses.where((course) => course.isStudent).map((e) => e.name).toList()}');
      } else {
        print('${student.id} - ${student.name}');
      }
    }
  }
}
