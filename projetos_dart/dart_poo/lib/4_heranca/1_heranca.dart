import 'package:dart_poo/4_heranca/cachorro.dart';

void main() {
  var cachorro = Cachorro(idade: 10);
  cachorro.tamanho = 'Pequeno';
  print(cachorro.calcularIdadeHumana());
  print(cachorro.recuperarIdade());
  print(''' 
      ${cachorro}:
        Tamanho: ${cachorro.tamanho}
        Idade: ${cachorro.idade}
        Idade Humana: ${cachorro.calcularIdadeHumana()}
  ''');
}
