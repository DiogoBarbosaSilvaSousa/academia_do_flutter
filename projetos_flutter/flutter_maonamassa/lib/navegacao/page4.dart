import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 4')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(
                //       settings: const RouteSettings(name: 'page1'),
                //       builder: (context) => const Page1(),
                //     ),
                //     ModalRoute.withName('page2'));
                // Removendo todas as páginas
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      settings: const RouteSettings(name: 'page1'),
                      builder: (context) => const Page1(),
                    ),
                    (route) => route.isFirst);
              },
              child: const Text('Page1'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      settings: const RouteSettings(name: 'page1'),
                      builder: (context) => const Page1(),
                    ),
                  );
                },
                child: const Text('Page1 Named')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Pop'))
          ],
        ),
      ),
    );
  }
}
