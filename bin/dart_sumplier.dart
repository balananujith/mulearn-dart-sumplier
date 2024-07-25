import 'dart:io';

void main() {
  // Clear the screen for better visual appeal
  print('\x1B[2J\x1B[0;0H');

  // Display a welcome message
  print('🎉 Welcome to Sumplier Madness! 🎉\n');
  print('This program will help you practice your multiplication skills.\n');

  // Prompt the user to enter a number
  stdout.write('Please enter a number to generate its multiplication table: ');
  String? input = stdin.readLineSync();

  // Check if the input is a valid number
  if (input != null && int.tryParse(input) != null) {
    int number = int.parse(input);
    
    // Initialize a variable to store the sum of all numbers in the table
    int sum = 0;

    // Print a formatted multiplication table
    print('\n📊 Multiplication Table for $number 📊');
    print('-----------------------------');
    for (int i = 1; i <= 10; i++) {
      int result = number * i;
      sum += result; // Add result to sum
      print('$number x $i = $result');
    }
    print('-----------------------------');

    // Print the sum of all numbers in the table
    print('\n🔢 The sum of all numbers in the table is: $sum\n');

    // Display a thank you message
    print('Thank you for using Sumplier Madness! Keep practicing and improving your skills! 🚀');
  } else {
    print('\n❌ Invalid input. Please enter a valid number.\n');
  }
}
