import 'dart:io';
import 'dart:math';

void main() { //controller = commu w/user
  stdout.write('Enter max number you want to guess : ');
  var inputRandom = stdin.readLineSync();
  var numRandom = int.tryParse(inputRandom!);
  var game = Game(maxRandom : numRandom);
  game.printLine();
  var isCorrect = false;

  do {
    game.printInfo();
    //stdout.write('Guess the number between 1 and $numRandom: ');
    var input = stdin.readLineSync(); // if use var, can be null
    var guess = int.tryParse(input!); // ! tell that not null but if enter or letter = null
    if (guess != null) {
      Map resultMap = game.doGuess(guess);
      isCorrect = resultMap['isCorrect'];
      var message = resultMap['text'];
      print('- $guess : $message');
      game.printLine();

    }
  } while (!isCorrect);
  var total = game.getTotalGuesses();

}

class Game{ //model
  late var answer; // late or ? = can be null / กำหนดค่าทีหลัง // below called 'Map'
  late var maxRandom;
  int count = 0;

  static const List feedbackList = [ //final = can't edit set value in run-time , static const = compiler จะเห็นว่าเป็น literal (compile time constant)
    // (use static if be filed of class but be field of function don't need static)
    {
      'text' : 'TOO HIGH',
      'isCorrect' : false,
    },
    {
      'text' : 'TOO LOW',
      'isCorrect' : false,
    },
    {
      'text' : 'CORRECT!',
      'isCorrect' : true,
    },
  ];

  Game({this.maxRandom}){
    this.answer = Random().nextInt(this.maxRandom)+1;
    //print('ตัวเลขที่สุ่มคือ ${this.answer}');

  }
  Map doGuess(int num){
    count++;
    if(num > this.answer){
      return feedbackList[0];
    } else if(num < this.answer){
      return feedbackList[1];
    } else {
      return feedbackList[2];
    }
  }
  void getTotalGuesses(){
    print('-TOTAL GUESS is $count');
    print('──────────────── END ──────────────────  ');

  }
  void printLine(){
    print('──────────────────────────────────────── ');
  }
  void printInfo(){
    stdout.write('Guess the number between 1 and $maxRandom: ');
  }

}