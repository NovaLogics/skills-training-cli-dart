import 'dart:io';

// Fibonacci Series

void main() {
  print("Enter the number of terms in the Fibonacci series:");
  int n = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1;

  print("Fibonacci series:");
  for (int i = 0; i < n; i++) {
    stdout.write("$a ");
    int next = a + b;
    a = b;
    b = next;
  }
}
