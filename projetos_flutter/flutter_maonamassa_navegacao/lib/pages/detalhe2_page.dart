import 'package:flutter/material.dart';

class Detalhe2Page extends StatelessWidget {
  static const String routeName = '/detalhe2';
  const Detalhe2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe 2'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context)
                .pop('Parametro retornado pela tela Detalhe2Page');
          },
          child: const Text('Voltar'),
        ),
      ),
    );
  }
}
