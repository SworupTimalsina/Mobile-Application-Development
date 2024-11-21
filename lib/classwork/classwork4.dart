import 'dart:io';

void main() {
  print("Enter your name: ");
  String? name = stdin.readLineSync();

  if (name != null && name.isNotEmpty) {
    for (int i = 0; i < 100; i++) {
      print(name);
    }
  } else {
    print("Invalid input. Please enter a valid name.");
  }
}
