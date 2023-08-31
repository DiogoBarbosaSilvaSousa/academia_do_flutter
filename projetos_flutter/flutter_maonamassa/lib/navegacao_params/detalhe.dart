import 'package:flutter/material.dart';

class Detalhe extends StatefulWidget {
  static const String routeName = '/detalhe';
  const Detalhe({super.key});

  @override
  State<Detalhe> createState() => _DetalheState();
}

class _DetalheState extends State<Detalhe> {
  int id = 0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final param =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      setState(() {
        id = param?['id'] ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: Center(
        child: Text('O id do produto é $id'),
      ),
    );
  }
}

// class Detalhe extends StatelessWidget {
//   static const String routeName = '/detalhe';
//   const Detalhe({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final param =
//         ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Detalhes'),
//       ),
//       body: Center(
//         child: Text('O id do produto é ${param?['id'] ?? 0}'),
//       ),
//     );
//   }
// }
