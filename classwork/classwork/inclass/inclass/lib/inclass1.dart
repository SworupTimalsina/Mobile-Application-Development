import 'dart:io';

void main() {
  var arr = <int>[];

  for (int i = 1; i <= 10; i++) {
    stdout.write("Enter a number: ");
    int number = int.parse(stdin.readLineSync()!);
    arr.add(number);
  }

  printArray(arr);
  checkOddEven(arr);
}

void printArray(List<int> arr) {
  print("Result values in the array are: ");
  for (int i in arr) {
    print(i);
  }
}

void checkOddEven(List<int> arr) {
  for (int number in arr) {
    if (number % 2 == 0) {
      print("$number is even.");
    } else {
      print("$number is odd.");
    }
  }
}
