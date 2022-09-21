// to perform the diffrent varient of algorithm under the same object.
// draw a user requested route on map for cycle, car or public transport.
//
// https://refactoring.guru/design-patterns/strategy

// create a program to draw a circle, square ot hexafgone,
// withe center provide by user

// how to use
void main(List<String> args) {
  final circle = Circle();
  final square = Square();
  final drawCircle = DrawShape(shape: circle);
  final drawSquare = DrawShape(shape: square);

  drawCircle.draw(2);
  drawSquare.draw(4);
}

// context class
class DrawShape {
  final Shape shape;

  DrawShape({required this.shape});

  String draw(int center) {
    return shape.draw(center);
  }
}

// strategy
abstract class Shape {
  String draw(int center);
}

class Circle implements Shape {
  @override
  String draw(int center) {
    return 'Circle at $center';
  }
}

class Square implements Shape {
  @override
  String draw(int center) {
    return 'Square at $center';
  }
}

class Hexagone implements Shape {
  @override
  String draw(int center) {
    return 'Hexagone at $center';
  }
}
