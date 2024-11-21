import 'dart:io';

void main() {
  print("Enter the range for the multiplication tables (1-9): ");
  String? input = stdin.readLineSync();

  if (input != null && int.tryParse(input) != null) {
    int range = int.parse(input);
    if (range > 0) {
      for (int i = 1; i <= 9; i++) {
        print("Multiplication Table of $i:");
        for (int j = 1; j <= range; j++) {
          print("$i x $j = ${i * j}");
        }
        print("");
      }
    } else {
      print("Please enter a positive number.");
    }
  } else {
    print("Invalid input. Please enter a valid number.");
  }
}
