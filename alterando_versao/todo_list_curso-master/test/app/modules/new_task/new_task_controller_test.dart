import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:todo_list/app/modules/new_task/new_task_controller.dart';
import 'package:todo_list/app/modules/new_task/new_task_module.dart';

void main() {
  initModule(NewTaskModule());
  // NewTaskController newtask;
  //
  setUp(() {
    //     newtask = NewTaskModule.to.get<NewTaskController>();
  });

  group('NewTaskController Test', () {
    //   test("First Test", () {
    //     expect(newtask, isInstanceOf<NewTaskController>());
    //   });

    //   test("Set Value", () {
    //     expect(newtask.value, equals(0));
    //     newtask.increment();
    //     expect(newtask.value, equals(1));
    //   });
  });
}
