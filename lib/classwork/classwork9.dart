import 'dart:io';

void main() {
  print("Enter a number to skip (1-100): ");
  String? input = stdin.readLineSync();

  if (input != null && int.tryParse(input) != null) {
    int skip = int.parse(input);

    if (skip >= 1 && skip <= 100) {
      for (int i = 1; i <= 100; i++) {
        if (i != skip) {
          print(i);
        }
      }
    } else {
      print("Please enter a number between 1 and 100.");
    }
  } else {
    print("Invalid input.");
  }
}
