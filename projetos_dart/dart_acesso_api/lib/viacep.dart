import 'dart:convert';

import 'package:http/http.dart';

Future<void> main() async {
  final result =
      await get(Uri.parse('https://viacep.com.br/ws/01001009/json/'));

  // print(result.body);
  // print('-----------------');
  print(result.statusCode);
  // print('-----------------');
  // print(result.request);
  // print('-----------------');
  // print(result.headers);

  if (result.statusCode != 200) {
    print('Erro ao buscar CEP');
    return;
  }

  final resultData = json.decode(result.body);

  print(result.body);

  if (resultData.containsKey('erro')) {
    print('CEP Não Existe');
  } else {
    print(resultData);
    print('-----------------');
    print(resultData['logradouro']);
  }
}
