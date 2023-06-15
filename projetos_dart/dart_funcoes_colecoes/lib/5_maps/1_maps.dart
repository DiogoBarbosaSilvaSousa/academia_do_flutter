void main() {
  // O Mapa é uma representação de Chave:Valor
  final paciente = <String, String>{
    'nome': 'Rodrigo Rahman',
    'curso': 'Academia do Flutter',
  };

  // O mapa pode ser nulo mas se for criado deve conter a chave
  // e o valor não nulos
  Map<String, String>? pacienteNullSafety = null;

  // O mapa não pode ser nulo mas a chave pode ser nula
  Map<String?, String> pacienteNullSafety2 = {
    null: 'Rodrigo',
  };

  // O mapa e a chave podem ser nulos mas o valor pode ser nulo
  Map<String, String?> pacienteNullSafety3 = {
    'nome': null,
  };

  separador('.putIfAbsent');
  var produtos = <String, String>{};
  produtos.putIfAbsent('nome', () => 'Cerveja');
  produtos.putIfAbsent('nome', () => 'Refrigerante');
  print(produtos);

  separador('.update');
  produtos.update('nome', (value) => 'Refrigerante');
  // Caso queira adicionar uma chave e valor que não existem ainda.
  produtos.update('preco', (value) => '10', ifAbsent: () => '10');
  print(produtos);

  // Recuperando um valor;
  separador();
  print('Produto ${produtos['nome']}');
  print('Preço ${produtos['preco']}');

  separador(
      '.forEach (não pode ser usado se for feita alguma requisição assíncrona nele.)');
  produtos.forEach((key, value) {
    print('Chave: $key: $value');
  });

  separador('.entry (pode ser usado para processos assíncronos.)');
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}: ${entry.value}');
  }
  separador();
  for (var key in produtos.keys) {
    print('Chave: $key');
  }

  for (var value in produtos.values) {
    print('Valores: $value');
  }

  separador();
  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key + '_nova', value.toUpperCase());
  });

  print(novoMapaProdutos);

  separador();

  var mapa = <String, Object>{
    'nome': 'Rodrigo Rahman',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de Flutter do Brasil!!!'
      },
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de Flutter do Brasil!!!'
      }
    ]
  };
}

void separador([String texto = '']) {
  print('-------------------------');

  if (texto.isNotEmpty) {
    print('* ${texto} *');
  }
}
