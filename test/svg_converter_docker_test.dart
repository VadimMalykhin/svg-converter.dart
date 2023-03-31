import 'package:svg_converter/svg_converter.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = SvgConverter();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.ok, isTrue);
    });
  });
}
