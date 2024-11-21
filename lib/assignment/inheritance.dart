import 'dart:io';

class Person {
  String name = "";

  void setName(String name) => this.name = name;
  String getName() => name;
}

class Employee extends Person {
  String position = "";

  void setPosition(String position) => this.position = position;
  String getPosition() => position;
}

void main() {
  final employee = Employee();

  stdout.write("Enter employee name: ");
  employee.setName(stdin.readLineSync()!);

  stdout.write("Enter employee position: ");
  employee.setPosition(stdin.readLineSync()!);

  print("\nEmployee Details:");
  print("Name: ${employee.getName()}");
  print("Position: ${employee.getPosition()}");
}
