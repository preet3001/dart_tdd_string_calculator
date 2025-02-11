int add(String number) {
  if (number.isEmpty) {
    return 0;
  }
  String seprator = ',|\n';
  if (number.startsWith('//')) {
    final parts = number.split('\n');
    seprator = parts.first.substring(2);
  }
  final numbers =
      number.split(RegExp(seprator)).map((e) => int.tryParse(e) ?? 0).toList();
  final negatives = numbers.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw Exception('negative numbers not allowed: ${negatives.join(", ")}');
  }
  return numbers.reduce((a, b) => a + b);
}
