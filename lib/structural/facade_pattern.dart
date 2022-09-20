// provide a simple interface to a library, framwork or any complex classes

// End user class
class FacadePattern {
  void drawShapes() {
    final shapeMaker = ShapeMaker();
    shapeMaker.drawCircle();
    shapeMaker.drawHexagon();
    shapeMaker.drawSqare();
  }
}

// facade class
class ShapeMaker {
  Shape circle = Circle();
  Shape square = Square();
  Shape hexagone = Henxagone();

  String drawCircle() {
    return circle.draw();
  }

  String drawSqare() {
    return square.draw();
  }

  String drawHexagon() {
    return hexagone.draw();
  }
}

// complex system
abstract class Shape {
  String draw();
}

class Circle implements Shape {
  @override
  String draw() {
    return 'Circle';
  }
}

class Square implements Shape {
  @override
  String draw() {
    return 'Square';
  }
}

class Henxagone implements Shape {
  @override
  String draw() {
    return 'Hexagone';
  }
}
