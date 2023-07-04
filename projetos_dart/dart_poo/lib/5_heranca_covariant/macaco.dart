import 'fruta.dart';
import 'banana.dart';
import 'mamifero.dart';

class Macaco extends Mamifero {
  @override
  void comer(Banana fruta) {
    print(fruta.tipo);
  }
}
