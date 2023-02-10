void main() {
  String nomeCompleto = 'Diogo Barbosa';
  print(nomeCompleto);
  nomeCompleto = 'Diogo Barbosa Silva Sousa';
  print(nomeCompleto);

  // Variáveis Finais:
  // Não podem ser alteradas depois de ser inicializadas (Imutáveis)
  // São definidas no programa em tempo de execução (Runtime)
  // Utilize sem moderação
  final nomeCompletoFinal = 'Diogo Barbosa';
  final nomeCompletoFinal2 = nomeCompleto;

  // Variáveis Const
  // Não podem ser alteradas depois de inicializadas (Imutáveis)
  // São definidas no programa em tempo de COMPILAÇÃO!!!
  // Não podem receber valores de outras varíaveis a não ser
  // que essas variáveis sejam const também.
  // Utilize sem moderação
  const nomeCompletoConst = 'Diogo Barbosa';
  const nomeCompletoConst2 = nomeCompletoConst;
}
