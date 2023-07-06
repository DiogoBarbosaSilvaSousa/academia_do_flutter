import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

void main() {
  var uno = Uno();
  var gol = Gol();

  // Neste caso eu restringi minha classe Gol somente aos métodos e atributos
  // que estão na Interface de Carros por exemplo neste caso eu não teria acesso
  // ao método tipoDeRodas pois ele foi implementado na classe Gol e não possuí
  // assinatura na interface Carros.
  Carro golCarro = Gol();

  //print(uno.velocidadeMaxima());
  //print(gol.velocidadeMaxima());

  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);
  print('Gol: ${gol.tipoDeRodas()}');
}

void printarDadosDoCarro(Carro carro) {
  print('''
      Carro: ${carro}
       Tipo: ${carro.runtimeType}
       Portas: ${carro.portas}
       Moto: ${carro.motor}
       Velocidade Máxima: ${carro.velocidadeMaxima()}
  ''');
}
