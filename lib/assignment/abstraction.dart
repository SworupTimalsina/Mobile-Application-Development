import 'dart:io';

abstract class BankAccount {
  void deposit(double amount);
  void withdraw(double amount);
  double getBalance();
}

class SavingsAccount extends BankAccount {
  double _balance = 0.0;

  @override
  void deposit(double amount) {
    _balance += amount;
    print("Deposited \$${amount.toStringAsFixed(2)}");
  }

  @override
  void withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)}");
    } else {
      print("Insufficient balance!");
    }
  }

  @override
  double getBalance() => _balance;
}

void main() {
  final account = SavingsAccount();

  while (true) {
    print("\n1. Deposit");
    print("2. Withdraw");
    print("3. Check Balance");
    print("4. Exit");
    stdout.write("Choose an option: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      stdout.write("Enter deposit amount: ");
      double amount = double.parse(stdin.readLineSync()!);
      account.deposit(amount);
    } else if (choice == 2) {
      stdout.write("Enter withdrawal amount: ");
      double amount = double.parse(stdin.readLineSync()!);
      account.withdraw(amount);
    } else if (choice == 3) {
      print("Balance: \$${account.getBalance().toStringAsFixed(2)}");
    } else if (choice == 4) {
      print("Exiting...");
      break;
    } else {
      print("Invalid choice!");
    }
  }
}
