/// Bridge pattern comes under Structural design pattern
///
/// this is split a large class or closely related set of class in two separate hierarchies
/// abstraction and implementation which can be developed independently
///
/// in this example we are creating a system for remote and device

class BridgePattern {
  void init(){
    Device tv = Tv();
    Remote tvRemote = TvRemote(tv);
    tvRemote.powerToggle();
    tvRemote.volumeUp();

    Device radio = Radio();
    Remote radioRemote = RadioRemote(radio);
    radioRemote.powerToggle();
    radioRemote.volumeDown();
  }
}

abstract class Remote {
  void powerToggle();

  void volumeUp();

  void volumeDown();
}

class TvRemote implements Remote {
  Device _device;

  TvRemote(this._device);

  @override
  void powerToggle() {
    print('tv power toggle');
  }

  @override
  void volumeDown() {
    print('tv volume down');
  }

  @override
  void volumeUp() {
    print('tv volume up');
  }
}

class RadioRemote implements Remote {
  Device device;
  RadioRemote(this.device);

  @override
  void powerToggle() {
    print('radio power toggle');
  }

  @override
  void volumeDown() {
    print('radio volume down');
  }

  @override
  void volumeUp() {
    print('radio volume up');
  }
}

abstract class Device {
  void name();
}

class Tv implements Device {
  @override
  void name() {
    print('tv');
  }
}

class Radio implements Device {
  @override
  void name() {
    print('AC');
  }
}