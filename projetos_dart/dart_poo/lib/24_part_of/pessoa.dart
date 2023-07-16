import 'telefone.dart';

part 'endereco.dart';
part 'cpf.dart';

class Pessoa {
  String? nome;

  // Composição
  // Quando um atributo de associação é obrigatório
  // Nós estamos falando de composição !!!
  _Endereco endereco = _Endereco();
  Cpf cpf = Cpf();

  // Agregação
  // Quando um atibuto de associação não é obrigatório
  // Nós estamos falando de agregação
  Telefone? telefone;
}
