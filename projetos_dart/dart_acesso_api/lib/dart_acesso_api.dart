import 'dart:convert';

void main() {
  final jsonCEP = ''' 
  {
    "cep": "01001-000",
    "logradouro": "Praça da Sé",
    "complemento": "lado ímpar",
    "bairro": "Sé",
    "localidade": "São Paulo",
    "uf": "SP",
    "ibge": "3550308",
    "gia":"1004",
    "ddd": "11",
    "siafi": "7107"
  }
''';

  final jsonData = json.decode(jsonCEP);
  print(jsonData.runtimeType);
  print('---------------------');
  print(jsonData['logradouro']);

  final jsonCEPLista = ''' 
  [{
    "cep": "01001-000",
    "logradouro": "Praça da Sé",
    "complemento": "lado ímpar",
    "bairro": "Sé",
    "localidade": "São Paulo",
    "uf": "SP",
    "ibge": "3550308",
    "gia":"1004",
    "ddd": "11",
    "siafi": "7107"
  }]
''';

  print('---------------------');

  final jsonDataLista = json.decode(jsonCEPLista);
  print(jsonDataLista.runtimeType);
  print('---------------------');
  print(jsonDataLista[0]['logradouro']);

  final jsonMap = {'curso': 'Academia do Flutter', 'totalAlunos': 880};
  print('---------------------');
  print(json.encode(jsonMap));
}
