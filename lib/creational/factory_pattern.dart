enum ShapeType { square, circle, extra }

abstract class Shape {
  factory Shape(ShapeType type) {
    switch (type) {
      case ShapeType.square:
        return Square();
      default:
        return Circle();
    }
  }

  String draw();
}

class Square implements Shape {
  @override
  String draw() {
    print('Square');
    return 'Square';
  }
}

class Circle implements Shape {
  @override
  String draw() {
    print('Circle');
    return 'Circle';
  }
}
