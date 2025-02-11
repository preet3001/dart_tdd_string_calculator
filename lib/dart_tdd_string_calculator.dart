int add(String number) {
  if (number.isEmpty) {
    return 0;
  }
  return int.tryParse(number) ?? 0;
}
