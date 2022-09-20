import 'package:design_patterns/structural/facade_pattern.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Facade pattern', () {
    late ShapeMaker shapeMaker;

    setUp(() {
      shapeMaker = ShapeMaker();
    });

    test('circle test', () {
      expect(shapeMaker.drawCircle(), 'Circle');
    });

    test('square test', () {
      expect(shapeMaker.drawSqare(), 'Square');
    });

    test('hexagon test', () {
      expect(shapeMaker.drawHexagon(), 'Hexagone');
    });
  });
}
