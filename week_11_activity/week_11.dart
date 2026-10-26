class Vehicle {
  String name;
  Vehicle(this.name);
  String describe() => "$name is a vehicle.";

  
  Future<String> save() async {
    print("Saving $name...");                 
    await Future.delayed(Duration(seconds: 2)); 
    return "$name saved successfully!";
  }
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


void main() async {
  var car = Car("Sedan");

  print("Start of program");      
  print(car.describe());
  car.drive();

 
  String result = await car.save(); 
  print(result);                    

  print("End of program");
  Bicycle().honk();
}