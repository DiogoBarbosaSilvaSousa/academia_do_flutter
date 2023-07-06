import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

// Variáveis de tipo superior e atributos de classe
// não são auto promovidas para o tipo checado!!!!
Carro golCarro2 = Gol();

void main() {
  var uno = Uno();
  var gol = Gol();

  // Neste caso eu restringi minha classe Gol somente aos métodos e atributos
  // que estão na Interface de Carros por exemplo neste caso eu não teria acesso
  // ao método tipoDeRodas pois ele foi implementado na classe Gol e não possuí
  // assinatura na interface Carros.
  Carro golCarro = Gol();
  print('Gol: ${gol.tipoDeRodas()}');

  // Auto-promoção
  // Quando checamos se a variável é (is) de um tipo
  // o dart a converte automaticamente caso ela seja do tipo verificado.
  if (golCarro is Gol) {
    print('golCarro: ${golCarro.tipoDeRodas()}');
  }

  // Conversão (Casting)
  // Variáveis de tipo superior e atributos de classe
  // não são auto promovidas para o tipo checado!!!!
  if (golCarro2 is Gol) {
    var tipoDeRodas = (golCarro2 as Gol).tipoDeRodas();
    print('golCarro2: $tipoDeRodas');
  }

  //print(uno.velocidadeMaxima());
  //print(gol.velocidadeMaxima());
  print('');
  printarDadosDoCarro(uno);
  printarDadosDoCarro(gol);
}

void printarDadosDoCarro(Carro carro) {
  print('''
      Carro: ${carro}
       Tipo: ${carro.runtimeType}
       Portas: ${carro.portas}
       Moto: ${carro.motor}
       Velocidade Máxima: ${carro.velocidadeMaxima()}
       ${carro is Gol ? 'Tipo de Rodas: ${carro.tipoDeRodas()}' : 'Tipo de '}
  ''');
}
