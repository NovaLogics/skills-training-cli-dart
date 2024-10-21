import 'dart:io';
import 'dart:math';

// Word Scramble

void main() {
  List<String> words = ["apple", "banana", "orange", "grape", "pear"];
  Random random = Random();

  String word = words[random.nextInt(words.length)];
  String scrambledWord = scramble(word);

  // Show the scrambled word to the user
  print("Unscramble this word: $scrambledWord");

  String guess = stdin.readLineSync()!;

  // Check if the user's guess is correct
  if (guess == word) {
    print("Correct!");
  } else {
    print("Sorry, the correct word was $word.");
  }
}

// Function to scramble the letters of a word
String scramble(String word) {
  List<String> letters = word.split('');
  letters.shuffle();
  return letters.join();
}
