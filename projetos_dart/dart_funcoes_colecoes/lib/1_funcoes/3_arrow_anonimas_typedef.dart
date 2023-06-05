void main() {
  // Funcoes Arrow - OK
  // Funcoes Anonimas
  // Typedef

  var nome = '';
  var idade = 1;
  var funcaoQualquer = () {
    print('Chamou a função da variável');
    return '2000';
  };

  print(nome.runtimeType);
  print(idade.runtimeType);
  print(funcaoQualquer);
  print(funcaoQualquer());

  () {
    print('Função Anônima');
  }();

  print(somaInteiros(10, 10));

  print('Iniciando chamada.');
  chamarUmaFuncaoDeUmParametro1((nome) {
    if (nome.isEmpty) {
      print('Nome veio vazio.');
    } else {
      print(nome);
    }
  });
  print('Finalizando chamada.');
}

// 3 partes
// 1 tipo de retorno
// 2 Nome
// 3 Parâmetros (normais, nomeados e opcionais)

int somaInteiros(int numero1, int numero2) => numero1 + numero2;
void somaInteirosVoid(int numero1, int numero2) => numero1 + numero2;

void chamarUmaFuncaoDeUmParametro1(FuncaoQueRecebeNome funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  print('finalizando a função chamarUmaFuncaoDeUmParametro');
  print('invocando funcaoQueRecebeONome');
  var nomeCompleto = 'Rodrigo Rahman';

  funcaoQueRecebeONome(nomeCompleto);
}

void chamarUmaFuncaoDeUmParametro2(FuncaoQueRecebeNome funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  print('finalizando a função chamarUmaFuncaoDeUmParametro');
  print('invocando funcaoQueRecebeONome');
  var nomeCompleto = 'Rodrigo Rahman';

  funcaoQueRecebeONome(nomeCompleto);
}

typedef FuncaoQueRecebeNome = void Function(String nome);
typedef FuncaoQueRecebeNomeComplexo = void Function(
    String nome, String NomeCompleto,
    {required String? x, required String? x2, int? idade});
