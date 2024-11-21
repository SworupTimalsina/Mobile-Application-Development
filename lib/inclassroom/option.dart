import 'dart:io';

void main() {
  int choice;

  do {
    print("\nMenu:");
    print("1. Add");
    print("2. Subtract");
    print("3. Multiply");
    print("4. Exit");
    stdout.write("Enter your choice (1-4): ");
    choice = int.parse(stdin.readLineSync()!);

    if (choice >= 1 && choice <= 3) {
      stdout.write("Enter the first number: ");
      int num1 = int.parse(stdin.readLineSync()!);

      stdout.write("Enter the second number: ");
      int num2 = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          print("Result: ${num1 + num2}");
          break;
        case 2:
          print("Result: ${num1 - num2}");
          break;
        case 3:
          print("Result: ${num1 * num2}");
          break;
      }
    } else if (choice != 4) {
      print("Invalid choice. Please try again.");
    }
  } while (choice != 4);

  print("Program exited.");
}
