import 'dart:convert';

class Telefone {
  int ddd;
  String telefone;

  Telefone({required this.ddd, required this.telefone});

  // método que pega o nosso objeto Telefone e transforma em um Objeto Map<String, dynamic>
  // toMap()
  // passo 1
  Map<String, dynamic> toMap() {
    return {
      'ddd': ddd,
      'telefone': telefone,
    };
  }

  // método que pega um Map<String,Dynmaic> e transforma em um json pelo pacote
  // dart:convert (jsonEncode)
  // toJson
  // passo 2
  String toJson() => jsonEncode(toMap());

  // Passo 2 da deserialização
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      ddd: map['ddd'],
      telefone: map['telefone'],
    );
  }

  // Passo 1
  factory Telefone.fromJson(String json) {
    final jsonMap = jsonDecode(json);
    return Telefone.fromMap(jsonMap);
  }
}
