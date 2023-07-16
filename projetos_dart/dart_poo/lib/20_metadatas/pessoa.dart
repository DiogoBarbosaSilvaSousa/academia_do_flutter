import 'package:dart_poo/20_metadatas/fazer.dart';

@Fazer(
    quem: 'Rodrigo Rahman na class', oque: 'tentando ler a anotacao da classe')
class Pessoa {
  @Fazer(
      quem: 'Rodrigo Rahman no atributo',
      oque: 'tentando ler a anotacao do atributo')
  String? nome;

  @Fazer(
      quem: 'Rodrigo Rahman no método',
      oque: 'tentando ler a anotacao do método')
  void fazerAlgo() {}
}
