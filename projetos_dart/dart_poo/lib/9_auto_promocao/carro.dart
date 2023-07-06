// No  dart interfaces e classes abstratas são feitas da mesma forma
// A diferença de uma interface e uma classe abstrata é que uma classe
// abstrata pode ter médotods implementados.

// Isso seria uma classe abstrata pois possuí métodos implementados!!!
abstract class CarroClasseAbstrata {
  void velocidadeMaxima() {}
}

// Isso seria uma "interface" pois não possuí  nenhum método implementado!!!
abstract class Carro {
  // características a serem implementadas
  // o abstract antes dos atributos obriga a quem implementar
  // decidir se será nulo ou não
  abstract int portas;
  abstract int rodas;
  abstract String motor;

  int velocidadeMaxima(); // Uma assinatura
}
