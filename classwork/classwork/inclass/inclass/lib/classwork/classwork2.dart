import 'dart:io';

void main() {
  print("Enter a character: ");

  String? input = stdin.readLineSync();
  
  if (input != null && input.length == 1) {
    String character = input.toLowerCase();

    if (RegExp(r'^[a-z]$').hasMatch(character)) {
      if ("aeiou".contains(character)) {
        print("$input is a vowel.");
      } else {
        print("$input is a consonant.");
      }
    } else {
      print("$input is not a valid alphabetic character.");
    }
  } else {
    print("Invalid input. Please enter a single character.");
  }
}
