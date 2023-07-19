import 'dart:async';

void main() {
  buscarAlgo(1)
      .then((value) => print('Mensagem: $value'))
      .catchError((err) => print('Erro: $err'));
}

Future<String> buscarAlgo(int numero) {
  final completer = Completer<String>();

  Timer(Duration(seconds: 2), () {
    if (numero == 0) {
      completer.complete('Numero enviado com sucesso');
    } else {
      completer.completeError('Número enviado com erro', StackTrace.current);
    }
  });

  return completer.future;
}
