void main() {
  var idade = '38';
  String? nome;

  try {
    separador('Início');
    var idadeParse = int.parse(idade);
    //nome!.toLowerCase();

    if (idadeParse == 38) {
      throw Exception();
    }
  } on FormatException catch (e, s) {
    separador('Ocorreu um erro');
    print(e);
    separador('Stacktrace');
    print(s);
  } on TypeError catch (e) {
    separador('Erro ao converter idade');
    print(e);
  } on Exception {
    separador('Erro idade == 38');
  } catch (e) {
    separador('Erro ao executar programa');
    print(e);
  } finally {
    separador('finally');
    separador('fim');
  }
}

void separador([String texto = '']) {
  print('-------------------------');

  if (texto.isNotEmpty) {
    print('* ${texto} *');
  }
}
