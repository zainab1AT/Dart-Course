void main() {
  greet('Zainab');
  greet('Zainab', 'Welcome');
}

void greet(String name, [String greeting = 'Hello']) {
  print('$greeting $name!');
}
