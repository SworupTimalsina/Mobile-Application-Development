import 'dart:io';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => 3.14159 * radius * radius;
}

class Rectangle extends Shape {
  double length, width;

  Rectangle(this.length, this.width);

  @override
  double area() => length * width;
}

void main() {
  stdout.write("Choose shape (circle/rectangle): ");
  String choice = stdin.readLineSync()!.toLowerCase();

  Shape shape;
  if (choice == "circle") {
    stdout.write("Enter radius: ");
    double radius = double.parse(stdin.readLineSync()!);
    shape = Circle(radius);
  } else if (choice == "rectangle") {
    stdout.write("Enter length: ");
    double length = double.parse(stdin.readLineSync()!);
    stdout.write("Enter width: ");
    double width = double.parse(stdin.readLineSync()!);
    shape = Rectangle(length, width);
  } else {
    print("Invalid choice!");
    return;
  }

  print("\nArea: ${shape.area()}");
}
