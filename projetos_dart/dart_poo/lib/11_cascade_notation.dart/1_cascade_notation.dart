void main() {
  var pessoa = Pessoa()
    ..nome = 'Rodrigo Rahman'
    ..email = 'rodrigorahaman@academiadoflutter.com.br'
    ..site = 'academiadoflutter.com.br'
    ..printPessoa();

  // pessoa.nome = 'Rodrigo Rahman';
  // pessoa.email = 'rodrigorahman@academiafoflutter.com.br';
  // pessoa.site = 'academiadoflutter.com.br';

  var mapa = <String, String>{}
    ..putIfAbsent('nome', () => 'Rodrigo')
    ..putIfAbsent('email', () => 'rodrigorahman@academiadoflutter.com.br')
    ..putIfAbsent('site', () => 'academiadoflutter.com.br');

  // print('''
  //     Pessoa: ${pessoa}
  //       Nome: ${pessoa.nome}
  //       Email: ${pessoa.email}
  //       Site: ${pessoa.site}
  //   ''');
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa() {
    print('''
      Pessoa:
        Nome: ${nome}
        Email: ${email}
        Site: ${site}
    ''');
  }
}
