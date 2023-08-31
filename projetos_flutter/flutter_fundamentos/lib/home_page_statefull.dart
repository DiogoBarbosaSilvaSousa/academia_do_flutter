import 'package:flutter/material.dart';

class HomePageStatefull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageStateFullState();
  }
}

class _HomePageStateFullState extends State<HomePageStatefull> {
  String texto = 'Estou no StatefulWidget';

  _HomePageStateFullState() {
    print('_HomePageStateFullstate constructor');
  }

  @override
  void initState() {
    super.initState();
    texto = 'Texto alterado pelo initState';
    print('Início do initState');

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // Só é executado depois que a página foi montada.
      print('addPostFrameCallback');
    });

    print('Fim do initState');
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('Buildando o HomePageStatefull');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto),
            TextButton(
              onPressed: () {
                setState(() {
                  texto = 'Alterei o texto do StatefulWidget';
                });
              },
              child: Text('Alterar Texto'),
            ),
          ],
        ),
      ),
    );
  }
}
