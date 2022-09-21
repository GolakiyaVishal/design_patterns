import 'package:design_patterns/behavioral/strategy_pattern.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Strategy pattern', () {
    test('Circle test', () {
      expect(DrawShape(shape: Circle()).draw(3), 'Circle at 3');
    });

    test('Square test', () {
      expect(DrawShape(shape: Square()).draw(33), 'Square at 33');
    });
  });
}
