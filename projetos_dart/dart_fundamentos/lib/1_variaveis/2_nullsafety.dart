// Variáveis de nível superior não podem ser incializadas depois
// Não é permitido
// String nomeCompletoSuperior
String nomeCompletoSuperio = 'Diogo';
String? nomeCompletoSuperiorOpc;

void main() {
  // Variáveis locais não precisam ser inicializadas de cara porém
  // Podem ser criadas sem valor e depois ser atribuído um valor
  String nomeCompleto;
  String? nomeCompletoOpc;

  nomeCompleto = 'Diogo Barbosa';

  // Variáveis locais que são nulas(nullable) por padrão
  // Se for atribuído um valor a ela, automaticamente elas são
  // Promovidas a não nulo (non-null)
  nomeCompletoOpc = '';

  // Variáveis de nível superio NUNCA são promovidas para Não Nulo(non-null)
  //nomeCompletoSuperioOpc = '';

  print(nomeCompleto.length);
  print(nomeCompletoOpc.length);
}
