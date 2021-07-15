/// Decorator is Structural design pattern
///
/// That lets you to attach new behaviors to existing object by placing the
/// object into a special wrapper that contain that behaviors.
///
/// In this example
/// A file access system with encryption and compression
///

class DecoratorPattern {
  void init() {
    DataSource dataSource = FileDataSource();
    DataSource ed = EncryptionDecoration(dataSource);
    ed.write(dataSource.read());
    print(ed.read());

    DataSource cd = CompressDecoration(dataSource);
    cd.write(dataSource.read());
    print(cd.read());
  }
}

abstract class DataSource {
  void write(dynamic data);

  dynamic read();
}

class FileDataSource implements DataSource {
  @override
  dynamic read() {
    return 'file read';
  }

  @override
  void write(data) {
    print('file write');
  }
}

class DataSourceDecorator implements DataSource {
  final DataSource dataSource;

  DataSourceDecorator({
    required this.dataSource,
  });

  @override
  dynamic read() {
    return dataSource.read();
  }

  @override
  void write(data) {
    dataSource.write(data);
  }
}

class EncryptionDecoration extends DataSourceDecorator {
  EncryptionDecoration(DataSource dataSource) : super(dataSource: dataSource);

  @override
  dynamic read() {
    return 'encryption file read';
  }

  @override
  void write(data) {
    print('encryption file write');
  }
}

class CompressDecoration extends DataSourceDecorator {
  CompressDecoration(DataSource dataSource) : super(dataSource: dataSource);

  @override
  dynamic read() {
    return 'compression file read';
  }

  @override
  void write(data) {
    print('compression file write');
  }
}
