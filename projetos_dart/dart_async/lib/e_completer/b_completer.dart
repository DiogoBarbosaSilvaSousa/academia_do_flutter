import 'dart:async';

Future<void> main() async {
  final usuario = UsuarioRepository();

  usuario.salvarComum((success) {
    print('Sucesso: $success');
  }, (error) {
    print('Erro: $error');
  });

  try {
    final sucesso = await usuario.salvarCompleter();
    print('Sucesso completer: $sucesso');
  } catch (e) {
    print('Erro completer: $e');
  }
}

class UsuarioRepository {
  void salvarComum(void Function(String) callbackSucess,
      void Function(String) callbackError) {
    Timer(Duration(seconds: 2), () {
      try {
        //throw Exception();
        callbackSucess('Usuário salvo com sucesso');
      } catch (e) {
        callbackError('Erro');
      }
    });
  }

  Future<String> salvarCompleter() {
    final completer = Completer<String>();
    Timer(Duration(seconds: 2), () {
      try {
        //throw Exception();
        completer.complete('Usuário salvo com sucesso');
      } catch (e) {
        completer.completeError('Erro');
      }
    });
    return completer.future;
  }
}
