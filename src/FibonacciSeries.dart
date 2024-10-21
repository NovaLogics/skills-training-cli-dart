import 'dart:io';

// Fibonacci Series

void main() {
  print("Enter the number of terms in the Fibonacci series:");

  int numTerms = int.parse(stdin.readLineSync()!);

  // Initialize the first two terms of the Fibonacci series
  int firstTerm = 0, secondTerm = 1;

  print("_________________");
  print("Fibonacci series:");

  for (int i = 0; i < numTerms; i++) {
    // Output the current term
    stdout.write("$firstTerm ");

    // Calculate the next term
    int nextTerm = firstTerm + secondTerm;

    // Update the terms for the next iteration
    firstTerm = secondTerm;
    secondTerm = nextTerm;
  }
}
