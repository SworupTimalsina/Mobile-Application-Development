import 'dart:io';

void main() {
  print("Enter the range for the multiplication table of 5: ");
  String? input = stdin.readLineSync();

  if (input != null && int.tryParse(input) != null) {
    int range = int.parse(input);
    if (range > 0) {
      for (int i = 1; i <= range; i++) {
        print("5 x $i = ${5 * i}");
      }
    } else {
      print("Please enter a positive number.");
    }
  } else {
    print("Invalid input. Please enter a valid number.");
  }
}
