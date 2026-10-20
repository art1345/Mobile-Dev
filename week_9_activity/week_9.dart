class Student {
  String name;
  int age;
  double _grade;

  Student(this.name, this.age, this._grade);

  double getGrade() {
    return _grade;
  }

  void setGrade(double newGrade) {
    if (newGrade >= 0 && newGrade <= 100) {
      _grade = newGrade;
    } else {
      print("Invalid grade! Must be 0-100.");
    }
  }

  String getStatus() {
    return _grade >= 75 ? "Passed" : "Failed";
  }

  void displayInfo() {
    print("$name, age $age, grade $_grade - ${getStatus()}");
  }
}

void main() {
  List<Student> students = [
    Student("Juan", 20, 90),
    Student("Maria", 19, 85),
    Student("Pedro", 21, 70),
  ];

  print("--- Before ---");
  for (Student s in students) {
    s.displayInfo();
  }

  students[2].setGrade(80);
  students[0].setGrade(150);

  print("--- After ---");
  for (Student s in students) {
    s.displayInfo();
  }
}
