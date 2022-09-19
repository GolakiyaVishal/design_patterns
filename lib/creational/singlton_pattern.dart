class Singleton {
  // private constructor
  // can not instansiat from outside
  Singleton._internal();

  // one and only instance of this class
  static final Singleton _instance = Singleton._internal();

  // return the [Singltone] instance
  factory Singleton() => _instance;
}
