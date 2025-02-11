import 'package:dart_tdd_string_calculator/dart_tdd_string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('should get 0 in case of empty string', () {
    expect(add(''), 0);
  });
  test('should get 1 in case string is 1', () {
    expect(add('1'), 1);
  });
  test('should get 6 in case string is 1,5', () {
    expect(add('1,5'), 6);
  });
  test('should also be handled as separator', () {
    expect(add('1/n2,3'), 6);
  });
}
