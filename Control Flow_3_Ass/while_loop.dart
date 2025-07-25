import 'dart:io';

void main() {
  String? input;

  while (input != "admin123") {
    stdout.write("Enter password: ");
    input = stdin.readLineSync();
  }

  print("Access granted.");
}
