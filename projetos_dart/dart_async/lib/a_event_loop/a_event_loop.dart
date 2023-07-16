import 'dart:async';

void main() {
  // Timer.run(() {});

  //scheduleMicrotask(() => print(''));

  print('Inicío main');
  Timer.run(() {
    scheduleMicrotask(() => print('Nova MicroTask 1'));
    print('Event 1');
  });
  Timer.run(() => print('Event 2'));
  Timer.run(() => print('Event 3'));
  scheduleMicrotask(() => print('MicroTask 1'));
  scheduleMicrotask(() => print('MicroTask 2'));
  print('Fim main');
}
