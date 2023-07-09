String? nome;

void main() {
  // = -= /= %= >>= ^=
  // += *= ~/= <<= &= |=

  var numero = 1;
  print(numero);
  // numero = numero + 2;
  numero += 2;
  print(numero);

  var numeroDouble = 2.0;
  // numero = numeroDouble / 1.0;
  numeroDouble /= 1.0;
  print(numeroDouble);

  print(nome);

  // if (nome == null) {
  //   nome = 'Rodrigo Rahman';
  // }

  nome ??= 'Rodrigo Rahman'; // Se for null atribui 'Rodrigo Rahman'
  print(nome);
}
