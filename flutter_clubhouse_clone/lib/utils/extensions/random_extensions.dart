import 'dart:math';

extension RandomExtensions on Random {
  int nextIntBetween({required int min, required int max}) {
    final _random = Random();
    final result = min + _random.nextInt(max - min);

    return result;
  }
}
