void main() {
  // print('Levando o carro para o mecânico.');

  // Future<int>(() {
  //   // função assícrona que vai fazer o orçamento da manutenção do nosso carro!
  //   return 10 ~/ 2;
  // }).then((valorOrcamento) {
  //   print('O orçamento para arrumar o carro é de $valorOrcamento');
  // });

  // print('Fui viajar');
  // Future<String>(() {
  //   // Indo para USA
  //   throw Exception('Avião caiu');
  //   return 'Macbook Comprado';
  // }).then((comprado) {
  //   print('comprei meu macbook: $comprado');
  // }).catchError((error) {
  //   print('Deu ruim o avião CAIU.');
  // }).whenComplete(() => print('Finalizado'));

  // print('Saindo da mecânica.');

  Future<int>(() {
    return 10 ~/ 2;
  }).then((value) => print('Valor calculado é $value'));

  Future<int>(() {
    return 10 ~/ 0;
  }).then((value) {
    print('Valor calculado é $value');
  }, onError: (error) {
    print('Ocorreu um erro $error');
    throw Exception('outro erro');
  }).catchError((error) {
    print('Ocorreu um erro no CatchErro $error');
  });
}
