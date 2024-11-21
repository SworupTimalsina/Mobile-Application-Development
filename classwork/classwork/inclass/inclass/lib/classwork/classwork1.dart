import 'dart:io';

void main() {
  print("Enter a number: ");
  
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    int number = int.parse(input);

    if (number % 2 == 0) {
      print("$number is an even number.");
    } else {
      print("$number is an odd number.");
    }
  } else {
    print("Invalid input. Please enter a valid number.");
  }
}
