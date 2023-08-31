import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nossa primeira AppBar'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_link_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_alarm_sharp),
          ),
        ],
      ),
      drawer: Drawer(
        child: Center(child: Text('Drawer aberto')),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20,
                )
              ]),
        ),
      ),
    );
  }
}
