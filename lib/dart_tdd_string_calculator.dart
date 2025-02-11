int add(String number) {
  if (number.isEmpty) {
    return 0;
  }
  final seprator = ',|/n';
  final numbers =
      number.split(RegExp(seprator)).map((e) => int.tryParse(e) ?? 0).toList();
  return numbers.reduce((a, b) => a + b);
}
