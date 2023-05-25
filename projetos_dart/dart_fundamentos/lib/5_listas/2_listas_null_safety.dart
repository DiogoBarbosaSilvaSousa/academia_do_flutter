void main() {
  // ? = Nullable (Aceita nulo)
  // Sem nada (padrão) = non-null (Não aceita nulo)

  // Não aceita nullo
  var nomes = [];

  // Aceita nulo
  List<String>? nomesNulos;

  // Lista não pode ser nula nem os itens internos podem ser null(nulo) !!!
  List<String> nomesInternosNaoAceitaNulos = ['Diogo'];
  var nomesInternosNaoAceitaNulos1 = ['Diogo'];
  // Lista não pode ser nula mas os itens podem ser nulos
  List<String?> nomesInternoAceitaNulos1 = ['Diogo', null, 'Barbosa', null];
  var nomesInternoAceitaNulos2 = <String?>['Diogo', null, 'Barbosa', null];

  // Lista pode ser nula e os itens podem ser nulos
  List<String?>? nomesInternoAceitaNulos3 = null;
}
