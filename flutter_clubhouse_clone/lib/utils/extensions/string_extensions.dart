extension StringExtensions on String {
  String toFirstUpperCase() {
    final text = this;

    return text[0].toUpperCase() + text.substring(1);
  }
}
