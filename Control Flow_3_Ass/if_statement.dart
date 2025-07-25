import 'dart:io';

void main() {
  stdout.write("Enter your age: ");
  String? input = stdin.readLineSync();
  int? age = int.tryParse(input ?? '');

  if (age == null) {
    print("Invalid input.");
  } else if (age >= 18) {
    print("You can vote.");
  } else {
    print("You're not eligible to vote yet.");
  }
}
