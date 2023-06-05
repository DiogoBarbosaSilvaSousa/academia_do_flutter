void main() {
  // Parâmetros Obrigatórios por default
  print('A soma de 10 + 10 ${somaInteiros(10, 10)}');

  // Parâmetros Nomeados
  // Parâmetros nomeados são nullables por default
  // Parametros nomeados podem ser  promovidos para non-null com checagem de null
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero1: 10.2, numero2: 10.2)}');
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numero2: 10.2, numero1: 10.2)}');

  somaDoublesObrigatorios(numero1: 5.2, numero2: 10.2);
  somaDoublesObrigatorios2(numero1: null, numero2: 10.2);

  print('Chamada com parametros default ${somaDoublesDefault()}');
  print('Chamada com parametros default ${somaDoublesDefault(numero1: 10)}');

  // Parâmetro opcional
  somaIntOpcional();
  somaIntOpcional(1);
  somaIntOpcional(1, 2);

  // Parâmetros normais com nomeados
  parametrosNormaisComNomeados(1, nome: 'Rodrigo Rahman', idade: 37);
  parametrosNormaisComNomeados2(1, 'Rodrigo Rahman', 37);
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

double somaDoubles({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0.0;
}

double somaDoublesObrigatorios(
    {required double numero1, required double numero2}) {
  return numero1 + numero2;
}

double somaDoublesObrigatorios2(
    {required double? numero1, required double? numero2}) {
  numero1 ??= 0;
  numero2 ??= 0;

  return numero1 + numero2;
}

double somaDoublesDefault({double numero1 = 0, double numero2 = 0}) {
  return numero1 + numero2;
}

int somaIntOpcional([int numero1 = 0, int numero2 = 0]) {
  return numero1 + numero2;
}

void parametrosNormaisComNomeados(int numero,
    {required String nome, required int idade}) {}

void parametrosNormaisComNomeados2(int numero, [String? nome, int? idade]) {}
