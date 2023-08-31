import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe2_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(DetalhePage.routeName, arguments: 'Parâmetro X');
              },
              child: const Text('Ir para Detalhe'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    settings: const RouteSettings(
                      name: DetalhePage.routeName,
                      //arguments: 'Parâmetro pelo page route',
                    ),
                    builder: (_) => const DetalhePage(
                          parametro: 'Parâmetro pelo page route',
                        )));
              },
              child: const Text('Ir para Detalhe PageRoute'),
            ),
            TextButton(
              onPressed: () async {
                var message = await Navigator.of(context)
                    .pushNamed(Detalhe2Page.routeName);
                print('Mensagem recebida da página: $message');
              },
              child: const Text('Ir para Detalhe 2 e aguardar'),
            ),
          ],
        ),
      ),
    );
  }
}
