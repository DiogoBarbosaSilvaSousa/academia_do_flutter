import 'somas/soma.dart' as soma;
import 'somas_nova/soma.dart' as nova_soma;
//import '../helpers/uteis.dart';
import 'package:dart_funcoes_colecoes/helpers/uteis.dart';

void main() {
  var totalDoubles = soma.somaDoubles(10.1, 5.1);
  var totalInteiros = nova_soma.somaInteiros(10, 5);

  separador('Total de doubles: $totalDoubles');
  separador('Total de int\'s: $totalInteiros');
}
