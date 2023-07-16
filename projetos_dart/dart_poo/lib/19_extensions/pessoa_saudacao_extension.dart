import 'pessoa.dart';

extension PessoaSaudacaoString on Pessoa {
  String saudacao() {
    return 'Olá $nome bem-vindo a academia do flutter.';
  }
}
