import 'package:dart_poo/5_heranca_covariant/banana.dart';
import 'package:dart_poo/5_heranca_covariant/macaco.dart';

import 'fruta.dart';
import 'humano.dart';

void main() {
  var humano = Humano();
  humano.comer(Fruta());

  var macaco = Macaco();
  macaco.comer(Banana('Nanica'));
}
