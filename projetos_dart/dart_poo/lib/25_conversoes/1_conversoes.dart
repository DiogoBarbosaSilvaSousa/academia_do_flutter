import 'aluno.dart';
import 'curso.dart';
import 'suco.dart';

import 'fruta.dart';

void main() {
  var frutas = [Fruta('banana'), Fruta('abacaxi'), Fruta('laranja')];

  var frutasMap = [
    {'nome': 'banana'},
    {'nome': 'abacaxi'},
    {'nome': 'laranja'}
  ];

  // List<Suco> sucos = [];
  // for (var fruta in frutas) {
  //   final suco = Suco(sabor: fruta.nome);
  //   sucos.add(suco);
  // }

  var sucos = frutas.map((fruta) {
    return Suco(sabor: fruta.nome);
  }).toList();

  var sucos2 = frutasMap.map((frutaMap) {
    return Suco(sabor: frutaMap['nome'] ?? 'Sem sabor');
  }).toList();

  print(sucos);
  print(sucos2);

  var alunoAdf = <String, Object>{
    'nome': 'Rodrigo Rahman',
    'cursos': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de Flutter do Brasil!!!'
      },
      {'nome': 'Imersão GetX', 'descricao': 'Imersão em GetX!!!'},
      {
        'nome': 'Imersão Código Limpo',
        'descricao': 'Imersão em Código Limpo!!!'
      }
    ]
  };

  final cursosMap = alunoAdf['cursos'] as List<Map<String, String>>;
  final cursos = cursosMap.map((curso) {
    var nomeCurso = curso['nome'] as String;
    var descricaoCurso = curso['descricao'] as String;

    return Curso(nome: nomeCurso, descricao: descricaoCurso);
  }).toList();

  final nomeAluno = alunoAdf['nome'] as String;

  final aluno = Aluno(nome: nomeAluno, cursos: cursos);

  print(aluno);
}
