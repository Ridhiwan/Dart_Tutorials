import "dart:io";
import 'dart:math';

void main() {
  // In this program we create a random number
  // and ask the user to guess the number.
  Random random = Random();
  int rand_num = random.nextInt(100) + 1;
  int count = 0;

  dynamic Guessgame() {
    print('Choose an integer between 1 and 100: ');
    var inp = stdin.readLineSync()!;
    dynamic chosen = int.tryParse(inp);

    if (chosen.runtimeType != Null) {
      count += 1;
      if (chosen > 0 && chosen < rand_num){
        print("You have guessed too low");
        Guessgame();
      } else if (chosen >0 && chosen > rand_num){
        print("You have guessed to high");
        Guessgame();
      } else if (chosen == rand_num){
        print("You have guessed correctly");
        print("You have made a total of $count guesses.");
      }
    } else {
      print("You have entered an Invalid number");
      Guessgame();
    }
  }

  Guessgame();

}