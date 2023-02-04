import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String texto = 'Texto inicial';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(texto),
            ElevatedButton(
              onPressed: () {
                texto = 'Texto alterado';
              },
              child: Text('Alterar Texto'),
            )
          ],
        ),
      ),
    );
  }
}
