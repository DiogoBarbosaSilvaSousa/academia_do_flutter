import 'residente_anestesia.dart';
import 'anestesista.dart';
import 'obstetra.dart';
import 'pediatra.dart';

import 'medico.dart';

void main() {
  // Parto!!!!

  var medicos = <Medico>[
    ResidenteAnestesia(),
    Anestesista(),
    Obstetra(),
    Pediatra(),
  ]; // <Medico>[]

  // Realizar um parto
  for (var medico in medicos) {
    medico.operar();
  }
}
