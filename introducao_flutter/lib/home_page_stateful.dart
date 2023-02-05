import 'package:flutter/material.dart';

class HomeaPageStateFul extends StatefulWidget {
  HomeaPageStateFul() {
    print('Rodando o construtor de HomePageStateFul');
  }

  @override
  State<StatefulWidget> createState() {
    print('Rodando o createState de HomePageStateFul');
    return _HomePageStateFulState();
  }
}

class _HomePageStateFulState extends State<HomeaPageStateFul> {
  String texto = 'Texto inicial';

  _HomePageStateFulState() {
    print('Rodando o construtor de _HomePageStateFulState');
  }

  @override
  void initState() {
    print('Rodando o initState de _HomePageStateFulState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('Rodando o didChangeDependencies de _HomePageStateFulState');
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    print('Rodando o dispose de _HomePageStateFulState');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Rodando o build de _HomePageStateFulState');
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(texto),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  texto = 'Texto alterado';
                });
              },
              child: Text('Alterar Texto'),
            )
          ],
        ),
      ),
    );
  }
}
