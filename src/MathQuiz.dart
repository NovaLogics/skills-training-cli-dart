import 'dart:io';
import 'dart:math';

// Math Quiz

void main() {
  Random random = Random();
  int correctAnswers = 0;

  print("Welcome to the Math Quiz!");
  print("___________________________");

  // Quiz the user with 5 questions
  for (int i = 0; i < 5; i++) {
    int num1 = random.nextInt(10) + 1;
    int num2 = random.nextInt(10) + 1;

    print("\n> Question ${i + 1}");
    print("What is $num1 + $num2?");
    int userAnswer = int.parse(stdin.readLineSync()!);

    // Check if the answer is correct
    if (userAnswer == num1 + num2) {
      print("🗸 Correct!");
      correctAnswers++;
    } else {
      print("ⓧ Wrong. The correct answer is ${num1 + num2}");
    }
  }

  // Display the final score
  print("___________________________");
  print("You got $correctAnswers out of 5 correct.");
}
