void main(List<String> arguments) {
  Cat cat = AnimalFactory.create('cat') as Cat;
  cat.speak();

  Dog dog = AnimalFactory.create('dog') as Dog;
  dog.speak();

  Animal? animal = AnimalFactory.create('lion');
  if (animal != null) {
    animal.speak();
  } else {
    print('Animal not found!');
  }
}

class AnimalFactory {
  static Animal? create(String type) {
    switch (type) {
      case 'cat':
        return Cat();
      case 'dog':
        return Dog();
      default:
        return null;
    }
  }
}

class Animal {
  void speak() {
    print('Animal sound!');
  }
}

class Cat extends Animal {
  void speak() {
    print('Miau!');
  }
}

class Dog extends Animal {
  void speak() {
    print('Au au!');
  }
}

