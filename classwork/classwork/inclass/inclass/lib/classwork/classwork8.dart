import 'dart:io';

void main() {
  print("Enter the first number: ");
  String? input1 = stdin.readLineSync();

  print("Enter the second number: ");
  String? input2 = stdin.readLineSync();

  print("Enter an operator (+, -, *, /): ");
  String? operator = stdin.readLineSync();

  if (input1 != null && input2 != null && operator != null) {
    double? num1 = double.tryParse(input1);
    double? num2 = double.tryParse(input2);

    if (num1 != null && num2 != null) {
      switch (operator) {
        case "+":
          print("Result: ${num1 + num2}");
          break;
        case "-":
          print("Result: ${num1 - num2}");
          break;
        case "*":
          print("Result: ${num1 * num2}");
          break;
        case "/":
          if (num2 != 0) {
            print("Result: ${num1 / num2}");
          } else {
            print("Error: Division by zero is not allowed.");
          }
          break;
        default:
          print("Invalid operator.");
      }
    } else {
      print("Invalid numbers.");
    }
  } else {
    print("Invalid input.");
  }
}
