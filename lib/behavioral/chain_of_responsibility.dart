/// Chain of Responsibility is behavioral design pattern
///
/// That lets you pass a requests along in chain of handlers,
/// Upon receiving the request that decides process the request or
/// pass to next handler in the chain.
///
/// In this example
/// a online order scenario has shown
///

class Chain {
  late RequestProcess process;

  Chain() {
    process = AuthRequest(OrderRequest(DialogRequest(null)));
  }

  void init(int number) {
    process.process(number);
  }
}

abstract class RequestProcess {
  RequestProcess? nextRequest;
  RequestProcess({
    required this.nextRequest,
  });

  void process(int number);
}

class AuthRequest extends RequestProcess {
  AuthRequest(RequestProcess? nextProcess) : super(nextRequest: nextProcess);

  @override
  void process(int number) {
    if (1 == number) {
      print('auth process request');
    } else {
      print('auth forward');
      super.nextRequest?.process(number);
    }
  }
}

class OrderRequest extends RequestProcess {
  OrderRequest(RequestProcess? nextProcess) : super(nextRequest: nextProcess);

  @override
  void process(int number) {
    if (2 == number) {
      print('order request process');
    } else {
      print('order forward');
      super.nextRequest?.process(number);
    }
  }
}

class DialogRequest extends RequestProcess {
  DialogRequest(RequestProcess? nextProcess) : super(nextRequest: nextProcess);

  @override
  void process(int number) {
    if (3 == number) {
      print('dialog request process');
    } else {
      print('request error');
    }
  }
}
