// observe a changes on publisher

// observer
void main(List<String> args) {
  Publisher().emitPrice().listen((event) {
    print('observe :: $event');
  });
}

// publisher
class Publisher {
  Stream<int> emitPrice() async* {
    var i = 0;
    while (i < 8) {
      await Future.delayed(Duration(seconds: 1));
      yield ++i;
    }
  }
}
