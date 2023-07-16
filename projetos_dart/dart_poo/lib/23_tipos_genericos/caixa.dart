import 'item.dart';

class Caixa<I extends Item> {
  I? _item;

  void adicionar(I item) {
    _item = item;
  }

  I? getItem() {
    return _item;
  }

  double alturaItem() {
    return _item?.altura() ?? 0;
  }
}
