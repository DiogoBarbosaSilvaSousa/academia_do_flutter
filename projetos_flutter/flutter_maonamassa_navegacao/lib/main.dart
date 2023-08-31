import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/core/navigator_observer_custom.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe2_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorObservers: [
        NavigatorObserverCustom(),
      ],
      onGenerateRoute: (RouteSettings settings) {
        // if (settings.name == '/') {
        //   return MaterialPageRoute(
        //     settings: settings,
        //     builder: (context) => const HomePage(),
        //   );
        // }

        if (settings.name == DetalhePage.routeName) {
          String parametro =
              settings.arguments as String? ?? 'Não foi enviado parâmetro';
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetalhePage(
              parametro: parametro,
            ),
          );
        }

        // return MaterialPageRoute(
        //   settings: settings,
        //   builder: (context) => const HomePage(),
        // );
      },
      routes: {
        '/': (_) => const HomePage(),
        Detalhe2Page.routeName: (_) => const Detalhe2Page(),
      },
    );
  }
}
