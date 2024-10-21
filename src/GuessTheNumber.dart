import 'dart:io';
import 'dart:math';

//Guess the Number

void main() {
  // Generate a random number between 1 and 100
  Random random = Random();
  int numberToGuess = random.nextInt(100) + 1;

  int guess;
  print("Welcome to Guess the Number!");

  // Loop until the correct number is guessed
  do {
    print("Enter your guess:");
    guess = int.parse(stdin.readLineSync()!);

    if (guess > numberToGuess) {
      print("Too high!");
    } else if (guess < numberToGuess) {
      print("Too low!");
    } else {
      print("Congratulations! You guessed the correct number.");
    }
  } while (guess != numberToGuess);
}
