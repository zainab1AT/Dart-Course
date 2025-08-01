void main() {
  registerUser('Zainab', 'zainab@gmail.com');
}

void registerUser(String username, String email) {
  if (email.contains('@'))
    print('User successfully registered!');
  else
    print('Invalid email address.');
}
