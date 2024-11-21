import 'dart:io';

class Student {
  String _name = "";
  int _age = 0;

  void setName(String name) => _name = name;
  void setAge(int age) => _age = age;

  String getName() => _name;
  int getAge() => _age;
}

void main() {
  final student = Student();

  stdout.write("Enter your name: ");
  student.setName(stdin.readLineSync()!);

  stdout.write("Enter your age: ");
  student.setAge(int.parse(stdin.readLineSync()!));

  print("\nStudent Details:");
  print("Name: ${student.getName()}");
  print("Age: ${student.getAge()}");
}
 