import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_list/app/components/time_component.dart';
import 'new_task_controller.dart';

class NewTaskPage extends StatefulWidget {
  final String title;
  const NewTaskPage({Key key, this.title = "NewTask"}) : super(key: key);

  @override
  _NewTaskPageState createState() => _NewTaskPageState();
}

class _NewTaskPageState extends ModularState<NewTaskPage, NewTaskController> {
  //use 'controller' variable to access controller

  bool saved = false;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'NOVA TASK',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Nome da Atividade',
              style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Hora',
              style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TimeComponent(),
            SizedBox(
              height: 100,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    loading = true;
                  });
                  Future.delayed(Duration(seconds: 1), () {
                    setState(() {
                      loading = false;
                      saved = !saved;
                    });
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.decelerate,
                  width: saved ? 120 : MediaQuery.of(context).size.width,
                  height: saved ? 120 : 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(!saved ? 0 : 100),
                    boxShadow: saved ? [BoxShadow(offset: Offset(2, 2), spreadRadius: 0, blurRadius: 30, color: Theme.of(context).primaryColor)] : null,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Visibility(
                        visible: loading,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: !saved ? 0 : 120,
                          child: AnimatedOpacity(
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInBack,
                            opacity: !saved ? 0.0 : 1.0,
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 60,
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: !saved,
                        child: Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: saved
                                ? Container()
                                : Text(
                                    'Salvar',
                                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
