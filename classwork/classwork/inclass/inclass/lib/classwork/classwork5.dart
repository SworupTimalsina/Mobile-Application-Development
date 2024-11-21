import 'dart:io';

void main() {
  print("Enter a positive integer: ");
  String? input = stdin.readLineSync();

  if (input != null && int.tryParse(input) != null) {
    int n = int.parse(input);
    if (n > 0) {
      int sum = (n * (n + 1)) ~/ 2;
      print("The sum of the first $n natural numbers is $sum.");
    } else {
      print("Please enter a positive integer.");
    }
  } else {
    print("Invalid input. Please enter a number.");
  }
}
