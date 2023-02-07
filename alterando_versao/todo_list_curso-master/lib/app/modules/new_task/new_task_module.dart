import 'package:todo_list/app/modules/new_task/new_task_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_list/app/modules/new_task/new_task_page.dart';

class NewTaskModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NewTaskController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => NewTaskPage()),
      ];

  static Inject get to => Inject<NewTaskModule>.of();
}
