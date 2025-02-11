int add(String number) {
  if (number.isEmpty) {
    return 0;
  }
  final numbers = number.split(',').map((e) => int.tryParse(e) ?? 0).toList();
  return numbers.reduce((a, b) => a + b);
}
