import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao_params/detalhe.dart';

class Lista extends StatelessWidget {
  static const String routeName = '/navegacao_param';
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      body: Center(
        child: Column(children: [
          TextButton(
            onPressed: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     settings: const RouteSettings(
              //       name: 'detalhe',
              //       arguments: {
              //         'id': 10,
              //       },
              //     ),
              //     builder: (context) => const Detalhe(),
              //   ),
              // );
              Navigator.of(context)
                  .pushNamed(Detalhe.routeName, arguments: {'id': 20});
            },
            child: const Text('detalhes'),
          ),
        ]),
      ),
    );
  }
}
