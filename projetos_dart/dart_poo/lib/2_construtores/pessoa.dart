class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  // construtor default todas as classes têm
  // automaticamente
  // Pessoa();

  /* Pessoa(String nomeConstrutor, int idadeConstrutor, String sexoConstrutor) {
    nome = nomeConstrutor;
    idade = idadeConstrutor;
    sexo = sexoConstrutor;
  } */

  /* Pessoa({required String nomeConstrutor, required int idadeConstrutor, required String sexoConstrutor}) {
    nome = nomeConstrutor;
    idade = idadeConstrutor;
    sexo = sexoConstrutor;
  } */

  Pessoa({required this.nome, required this.idade, required this.sexo});

  // construtor nomeado
  Pessoa.semNome({required this.idade, required this.sexo});

  Pessoa.vazia();

  // Construtor do tipo factory
  // é utilizado quando temos uma regra de negócio
  // para a criação da nossa classe!!!
  factory Pessoa.fabrica(String nomeConstr) {
    var nome = '${nomeConstr}_Fabrica';
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return pessoa;
  }
}
