// Base class
class Vehicle {
  String name;
  Vehicle(this.name);
  String describe() => "$name is a vehicle.";
}

// Abstract class
abstract class Drivable {
  void drive();
}

// Mixin
mixin Honkable {
  void honk() => print("Beep!");
}

// Derived classes
class Car extends Vehicle implements Drivable {
  Car(String name) : super(name);
  @override
  String describe() => "$name is a car.";
  @override
  void drive() => print("$name drives fast.");
}

class Truck extends Vehicle implements Drivable {
  Truck(String name) : super(name);
  @override
  String describe() => "$name is a truck.";
  @override
  void drive() => print("$name drives slow.");
}

// Mixin used outside the chain
class Bicycle with Honkable {}

void main() {
  for (var v in [Car("Sedan"), Truck("Freightliner")]) {
    print(v.describe());
    (v as Drivable).drive();
  }
  Bicycle().honk();
}
