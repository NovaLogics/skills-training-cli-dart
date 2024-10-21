import 'dart:io';
import 'dart:math';

//Guess the Number

void main() {
  // Generate a random number between 1 and 100
  Random random = Random();
  int numberToGuess = random.nextInt(100) + 1;

  int guess;
  int numberOfTries = 0;

  print("Welcome to Guess the Number!");
  print("Guess a number between 1 and 100");
  print("_______________________________");

  // Loop until the correct number is guessed
  do {
    print("\n> Enter your guess:");

    numberOfTries++;

    guess = int.parse(stdin.readLineSync()!);

    if (guess > numberToGuess) {
      print("Too high!");
    } else if (guess < numberToGuess) {
      print("Too low!");
    } else {
      print("_______ Congratulations! _______");
      print("You've guessed the number in $numberOfTries tries.");
      print("_______________________________");
    }
  } while (guess != numberToGuess);
}
