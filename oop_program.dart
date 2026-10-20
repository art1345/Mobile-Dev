class Student {
  String name;
  int age;
  double _grade;

  Student(this.name, this.age, this._grade);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Grade: $_grade");
    print("Status: ${getStatus()}");
    print("----------------------");
  }

  double get grade => _grade;

  set grade(double value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    } else {
      print("Invalid grade! Grade must be 0-100.");
    }
  }

  String getStatus() {
    return _grade >= 75 ? "Passed" : "Failed";
  }
}

void main() {
  List<Student> students = [
    Student("Juan", 20, 90),
    Student("Maria", 19, 85),
    Student("Pedro", 21, 70),
  ];

  print("=== STUDENT GRADE MANAGEMENT SYSTEM ===");
  print("");

  for (Student student in students) {
    student.displayInfo();
  }

  students[2].grade = 80;

  print("After updating Pedro's grade:");
  students[2].displayInfo();
}
