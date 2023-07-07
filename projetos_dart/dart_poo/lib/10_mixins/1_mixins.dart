import 'joao.dart';

void main() {
  // João é um Artista
  // João é um Cantar
  // João é um Dancar
  var joao = Joao();
  print('''
      João: ${joao}
        Habilidade: ${joao.habilidade()}
        Cantar: ${joao.cantar()}
        Dançar: ${joao.dancar()}
  ''');
}
