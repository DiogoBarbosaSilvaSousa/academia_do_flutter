import 'package:mobx/mobx.dart';

part 'new_task_controller.g.dart';

class NewTaskController = _NewTaskControllerBase with _$NewTaskController;

abstract class _NewTaskControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
