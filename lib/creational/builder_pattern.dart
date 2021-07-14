/// Builder pattern comes under creational pattern.
/// It build complex object creation in step-by-step approach and using simple object
///
/// In this example, we are creating food system

class BuilderPattern {
  void init() {
    FoodBuilder foodBuilder = FoodBuilder();

    Food pack1 = foodBuilder.preparePack1();
    pack1.showItem();
    print('pack1 cost: ${pack1.cost()}');

    Food pack2 = foodBuilder.preparePack2();
    pack2.showItem();
    print('pack2 cost: ${pack2.cost()}');
  }
}

class FoodBuilder {
  Food preparePack1() {
    return Food()..addItem(Burger())..addItem(ColdDrink());
  }

  Food preparePack2() {
    return Food()
      ..addItem(Burger())
      ..addItem(Burger())
      ..addItem(ColdDrink())
      ..addItem(ColdDrink());
  }
}

class Food {
  List<Item> itemList = [];

  void addItem(Item item) {
    itemList.add(item);
  }

  double cost() {
    double cost = 0;
    itemList.forEach((element) {
      cost += element.price();
    });
    return cost;
  }

  void showItem() {
    itemList.forEach((element) {
      print('${element.name()}');
    });
  }
}

abstract class Packing {
  String pack();
}

class Wrapper implements Packing {
  @override
  String pack() => 'Wrapper';
}

class Bottle implements Packing {
  @override
  String pack() => 'Bottle';
}

abstract class Item {
  String name();

  Packing packing();

  double price();
}

class Burger implements Item {
  @override
  String name() => 'Burger';

  @override
  Packing packing() {
    return Wrapper();
  }

  @override
  double price() => 12.15;
}

class ColdDrink implements Item {
  @override
  String name() => 'Cold drink';

  @override
  Packing packing() {
    return Bottle();
  }

  @override
  double price() => 15.15;
}
