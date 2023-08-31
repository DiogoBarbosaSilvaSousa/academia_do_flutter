import 'package:flutter/material.dart';
//import 'package:flutter_maonamassa/home/home_page.dart';
//import 'package:flutter_maonamassa/images/images_page.dart';
import 'package:flutter_maonamassa/navegacao/home_page.dart' as navegacao;
import 'package:flutter_maonamassa/navegacao/page1.dart';
import 'package:flutter_maonamassa/navegacao/page2.dart';
import 'package:flutter_maonamassa/navegacao/page3.dart';
import 'package:flutter_maonamassa/navegacao/page4.dart';
import 'package:flutter_maonamassa/navegacao_params/detalhe.dart';
import 'package:flutter_maonamassa/navegacao_params/lista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //home: navegacao.HomePage(),
      initialRoute: Lista.routeName,
      routes: {
        '/': (_) => const navegacao.HomePage(),
        '/page1': (_) => const Page1(),
        Page2.routeName: (_) => const Page2(),
        '/page3': (_) => const Page3(),
        '/page4': (_) => const Page4(),
        Lista.routeName: (_) => const Lista(),
        Detalhe.routeName: (_) => const Detalhe(),
      },
    );
  }
}
