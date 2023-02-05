import 'package:flutter/material.dart';
import 'package:introducao_flutter/singleton_pattern.dart';

extension SingletonBuildContext on BuildContext {
  int get id => SingletonPattern.instance.id ?? 0;
}
