import 'dart:io';

void main() {
  print("Enter a number: ");
  
  String? input = stdin.readLineSync();
  
  if (input != null && input.isNotEmpty) {
    double number = double.parse(input);

    if (number > 0) {
      print("$number is a positive number.");
    } else if (number < 0) {
      print("$number is a negative number.");
    } else {
      print("The number is zero.");
    }
  } else {
    print("Invalid input. Please enter a valid number.");
  }
}
