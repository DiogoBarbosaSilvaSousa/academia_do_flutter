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
      endDrawer: Drawer(
        child: Center(child: Text('Drawer aberto')),
      ),
      body: Center(child: Text('Nossa HomePage')),
    );
  }
}
