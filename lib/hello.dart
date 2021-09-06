import 'dart:io'; //get input in command-line
import 'dart:math'; //use class Random number

void main() {

  const MAX_RANDOM = 100; // constant
  Random r = new Random(); //have 'new' -- new Random() or don't have -- Random() //var r = Random();
  int answer = r.nextInt(MAX_RANDOM) + 1; // if max = 100, random 0 to 99 // +1 is itself = 100
  int guess;
  int count = 0;
  print('─────────────────── GAME START ─────────────────── ');
  do {
    stdout.write('Guess the number between 1 and $MAX_RANDOM: '); //stdout : no more line
    String? input = stdin.readLineSync(); //read from keyboard // parameter be optional //return string or null
    if (input == null) { //enter = string //check because int.parse don't allow to be null
      return ;
    }
    guess = int.tryParse(input) ?? 0 ; //case String to int // use ! = no way null (in case you don't check null)

    if(guess != 0) {
      if (answer == guess) {
        print('>> $guess is CORRECT!');
        print('-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*');
      } else if (answer < guess) {
        print('>> $guess is TOO HIGH!');
        print('-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*');
      } else {
        print('>> $guess is TOO LOW!');
        print('-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*');
      }
      count++;
    }


  } while(guess != answer);
  print('➜TOTAL GUESS is $count');
  print('─────────────────── THE END ─────────────────── ');

  }