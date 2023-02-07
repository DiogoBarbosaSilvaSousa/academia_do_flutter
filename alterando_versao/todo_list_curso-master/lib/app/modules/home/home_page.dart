import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_box,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              'Finalizadas',
              style: TextStyle(color: Colors.white),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_week,
              color: Colors.white,
              size: 30,
            ),
            title: Text('Semana', style: TextStyle(color: Colors.white)),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              color: Colors.white,
              size: 30,
            ),
            title: Text('Calendário', style: TextStyle(color: Colors.white)),
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          switch (index) {
            case 2:
              Future<DateTime> selectedDate = showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2018),
                lastDate: DateTime(2030),
                builder: (BuildContext context, Widget child) {
                  return Theme(
                    data: ThemeData.dark(),
                    child: child,
                  );
                },
              );
              break;
          }
        },
      ),
      drawer: Drawer(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (_, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                  child: Row(
                    children: [
                      Expanded(child: Text('Hoje', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
                      IconButton(
                          icon: Icon(
                            Icons.add_circle,
                            color: Color(0xFFFF9129),
                            size: 30,
                          ),
                          onPressed: () => Modular.to.pushNamed('/new')),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ListTile(
                        leading: Checkbox(
                          activeColor: Theme.of(context).primaryColor,
                          onChanged: (bool value) {},
                          value: true,
                        ),
                        title: Text(
                          'teste',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        trailing: Text(
                          '06:00',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
