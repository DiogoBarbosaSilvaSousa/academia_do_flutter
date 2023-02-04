abstract class Camiseta {
  String? cor;
  String tipoDeLavagem();
}

class CamisetaGolaCareca implements Camiseta {
  @override
  String tipoDeLavagem() {
    return 'Pode lavar na maquina';
  }

  @override
  String? cor = 'Branca';
}

void main() {
  Camiseta camiseta = CamisetaGolaCareca();

  print([camiseta.tipoDeLavagem(), camiseta.cor]);
}
