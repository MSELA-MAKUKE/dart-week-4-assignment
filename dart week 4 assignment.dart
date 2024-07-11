import 'dart:io';

// Interface definition
abstract class Printable {
  void printInfo();
}

// Base class with inheritance
class Animal {
  String name;

  Animal(this.name);

  void eat() {
    print('$name is eating');
  }
}

// Subclass that extends Animal and implements Printable
class Dog extends Animal implements Printable {
  String breed;

  Dog(String name, this.breed) : super(name);

  @override
  void eat() {
    print('$name the $breed is eating');
  }

  void bark() {
    print('Woof! Woof!');
  }

  @override
  void printInfo() {
    print('Dog: $name, Breed: $breed');
  }
}

// Class that initializes data from a file
class Cat extends Animal {
  int age;

  Cat(String name, this.age) : super(name);

  void sleep() {
    print('$name is sleeping');
  }

  void printAge() {
    print('$name is $age years old');
  }
}

void main() {
  // Initialize Dog instance
  Dog myDog = Dog('Buddy', 'Labrador');
  myDog.eat();
  myDog.bark();
  myDog.printInfo();

  // Initialize Cat instance from file
  Cat myCat = Cat('Whiskers', 5); // Assuming data is read from a file
  myCat.eat();
  myCat.sleep();
  myCat.printAge();

  // Method demonstrating the use of a loop
  void countToTen() {
    for (int i = 1; i <= 10; i++) {
      print(i);
    }
  }

  countToTen(); // Calling method with a loop
}
