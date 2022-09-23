// an object that allow collaboration an incompatible interface

void main(List<String> args) {
  IConvert integerConvert = IntegerConvert();
  IConvert doubleConvert = DoubleConvert();

  print(integerConvert.getData());
  print(doubleConvert.getData());
}

// adapter interface
abstract class IConvert {
  String getData();
}

// adapter
// integer to string adapter
class IntegerConvert implements IConvert {
  @override
  String getData() {
    return _processData(10);
  }

  String _processData(int data) {
    return data.toString();
  }
}

// double to string
class DoubleConvert implements IConvert {
  @override
  String getData() {
    return _processData(12.1);
  }

  String _processData(double d) {
    return d.toString();
  }
}
