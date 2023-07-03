class Produto {
  final int _id; // privado
  final String nome;
  final double _preco; // privado

  //Produto(this.id, this.nome, this.preco);
  Produto({required int id, required this.nome, required double preco})
      : _id = id,
        _preco = preco {
    print(_id);
    print(_preco);
  }

  factory Produto.fabrica(
      {required int idFabrica,
      required String nomeFabrica,
      required double precoFabrica}) {
    return Produto(id: idFabrica, nome: nomeFabrica, preco: precoFabrica);
  }
}
