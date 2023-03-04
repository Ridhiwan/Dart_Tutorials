import 'dart:io';
import 'dart:math';

class RockPaperScissors {
  // Put underscore to hide the variable from access outside of library
  var _game = {1: 'Rock', 2: 'Scissors', 3: 'Paper'};
  var _plays = ['Rock', 'Paper', 'Scissors'];
  String? _player1;
  String? _player2;
  int times_won = 0;
  int times_lost = 0;
  int times_drawn = 0;

  play(){
    // The function to get random choice for computer
    dynamic getRandomElement(List list) {
      final random = new Random();
      var i = random.nextInt(list.length);
      return list[i];
    }

    print("Welcome to Rock,Paper,Scissors. Choose a number to play:\n"
        "1. Rock\n"
        "2. Scissors\n"
        "3. Paper");
    var choice = stdin.readLineSync()!;

    dynamic num = int.tryParse(choice);
    if (num.runtimeType != Null && num >=1 && num < 4) {
      _player1 = _game[num];
      _player2 = getRandomElement(_plays);
    } else {
      print("You have entered an Invalid choice, please try again.");
      play();
    }
    return [_player1,_player2];
  }

  evaluate(List results) {
    List _won = ['RockvScissors','ScissorsvPaper','PapervRock'];
    List _lost = ['RockvPaper','ScissorsvRock','PapervScissor'];
    List _draw = ['RockvRock','ScissorsvScissors','PapervPaper'];

    String setup = results.join('v');
    if (_won.contains(setup)){
      times_won += 1;
      print("You Won! \u{1F389}");
    }
    if (_lost.contains(setup)){
      times_lost += 1;
      print("You lost :( \u{1F62D}");
    }
    if (_draw.contains(setup)){
      times_drawn += 1;
      print("It is a draw \u{1F612}");
    }
      
  }

}


void main(){
  dynamic Gameplay() {
    RockPaperScissors myGame = RockPaperScissors();
    List results = myGame.play();
    myGame.evaluate(results);
    return [myGame.times_won,myGame.times_lost,myGame.times_drawn];
  }
  List accept = ['Yes','yes','Y','y'];
  Gameplay();

  while(true) {
    print("Continue playing? choose 'Y' to continue and 'N' to quit");
    var inp = stdin.readLineSync()!;
    if (accept.contains(inp)) {
      Gameplay();
    } else {
      List record = Gameplay();
      print("You have won: ${record[0]} matches\n"
      "You have lost: ${record[1]} matches\n"
      "You were draw for: ${record[2]} matches");
      print("See you next time \u{1FAA8} \u{1F4DC} \u{2702}");
      break;
    }
  }
}
