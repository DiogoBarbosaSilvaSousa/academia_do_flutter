import 'dart:io';

void main() {
  print("Digite seu nome?");
  // Lendo o nome digitado
  String? nome = stdin.readLineSync(); // null safety in name string

  // Printing the name
  print("Olá, $nome! \nBem-vindo a linha de comando do Dart!!");
}
