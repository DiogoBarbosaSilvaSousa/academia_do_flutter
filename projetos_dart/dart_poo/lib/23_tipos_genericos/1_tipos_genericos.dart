import 'bola.dart';
import 'boneca.dart';
import 'computador.dart';
import 'telefone.dart';
import 'caixa.dart';

void main() {
  List<int> numeros = [1, 2, 3];
  numeros.add(2);

  Map<String, int> mapa = {};

  final caixaBola = Caixa<Bola>();
  caixaBola.adicionar(Bola());
  Bola? itemCaixa = caixaBola.getItem();
  print(caixaBola.alturaItem());

  // Não posso usar pois computador não extende Item
  // final caixaComputador = Caixa<Computador>();
}
