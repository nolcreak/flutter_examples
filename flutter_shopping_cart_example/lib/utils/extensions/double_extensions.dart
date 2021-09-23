extension DoubleExtension on double {
  double toDoubleAsFixed(fractionDigits) {
    final value = this;

    return double.parse(value.toStringAsFixed(fractionDigits));
  }
}
