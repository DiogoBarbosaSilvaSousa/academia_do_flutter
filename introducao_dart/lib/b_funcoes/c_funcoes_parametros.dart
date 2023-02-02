void main() {
  parametrosNormais('Diogo', 36);
  parametrosOpcionais();
  parametrosNomeados(nome: 'Diogo', idade: 36);
  parametrosNomeados(idade: 36, nome: 'Diogo');
  parametrosNomeados(idade: 36);
  parametrosNomeadosObrigatorios(nome: 'Diogo', idade: 36);
  parametrosNomeadosObrigatorios(nome: 'Diogo');
  parametrosNormaisComOpcional('Diogo');
  parametrosNormaisComNomeados('Diogo', idade: 36, valor: 5000);
  parametrosNormaisComNomeados('Diogo', valor: 5000, idade: 36);
  parametrosNormaisComNomeados('Diogo', idade: 36);
  parametrosNormaisComNomeados('Diogo', valor: 5000);
  parametrosNormaisComNomeados('Diogo');
  parametrosNormaisComNomeados(valor: 5000, idade: 36, 'Diogo');
  parametrosNormaisComNomeadosDois('Diogo', 3000.00, valor: 5000, idade: 36);
  parametrosNormaisComNomeadosDois('Diogo', valor: 5000, idade: 36, 3000.00);
  parametrosNormaisComNomeadosDois('Diogo', valor: 5000, 3000.00, idade: 36);
  parametrosNormaisComNomeadosDois(valor: 5000, 'Diogo', 3000.00, idade: 36);
  parametrosNormaisComNomeadosDois(idade: 36, 'Diogo', 3000.00, valor: 5000);
}

void parametrosNormais(String nome, int idade) {}
void parametrosOpcionais([String? nome, int? idade]) {}
void parametrosNomeados({String? nome, int? idade}) {}
void parametrosNomeadosObrigatorios({required String nome, int? idade}) {}
void parametrosNormaisComOpcional(String nome, [int? idade, int? valor]) {}
void parametrosNormaisComNomeados(String nome, {int? idade, int? valor}) {}
void parametrosNormaisComNomeadosDois(String nome, double preco,
    {int? idade, int? valor}) {}
