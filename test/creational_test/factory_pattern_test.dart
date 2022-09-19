import 'package:design_patterns/creational/factory_pattern.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('factory pattern test', () {
    test('circle test', () {
      expect(Shape(ShapeType.circle).draw(), 'Circle');
    });

    test('square test', () {
      expect(Shape(ShapeType.square).draw(), 'Square');
    });

    test('default circle test', () {
      expect(Shape(ShapeType.extra).draw(), 'Circle');
    });
  });
}
