import 'dart:io';

void main() {
  print("-----------Somando dois números-----------");
  print("Digite o primeiro número:");
  int? n1 = int.parse(stdin.readLineSync()!);
  print("Digite o segundo número:");
  int? n2 = int.parse(stdin.readLineSync()!);
  // Somando e imprimindo o resultado
  int soma = n1 + n2;
  print("A soma é $soma");

  // Impedindo o terminal de fechar de forma automática
  stdin.readLineSync();
}
