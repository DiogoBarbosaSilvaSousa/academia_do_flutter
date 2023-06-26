void separador([String texto = '']) {
  print('-------------------------');

  if (texto.isNotEmpty) {
    print('* ${texto} *');
  }
}
