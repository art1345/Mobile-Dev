class Vehicle {
  String name;
  Vehicle(this.name);
  String describe() => "$name is a vehicle.";
}

abstract class Drivable {
  void drive();
}

mixin Honkable {
  void honk() => print("Beep!");
}

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

class Bicycle with Honkable {}

void main() {
  for (var v in [Car("Sedan"), Truck("Freightliner")]) {
    print(v.describe());
    (v as Drivable).drive();
  }
  Bicycle().honk();
}
