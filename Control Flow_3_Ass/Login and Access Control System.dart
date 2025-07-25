import 'dart:io';

void main() {
  stdout.write("Enter your username: ");
  String? username = stdin.readLineSync();

  stdout.write("Enter your password: ");
  String? password = stdin.readLineSync();

  stdout.write("Enter your role (admin/user): ");
  String? role = stdin.readLineSync();

  if (username == "manager") {
    if (password == "admin@123") {
      if (role == "admin") {
        print("Welcome Admin Manager! Full access granted.");
      } else {
        print("Access denied: Admin role required.");
      }
    } else {
      print("Incorrect password. Try again.");
    }
  } else if (username == "guest") {
    if (password == "user@123") {
      if (role == "user") {
        print("Welcome Guest! Limited access granted.");
      } else {
        print("Access denied: User role required.");
      }
    } else {
      print("Incorrect password. Try again.");
    }
  } else {
    print("Unknown user.");
  }
}
