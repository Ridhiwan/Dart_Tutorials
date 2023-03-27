import 'package:collection/collection.dart';

void checkWinner(List list, String player1, String player2) {
  var cplay = list;
  // Create a list of lists that if matched they make a winner
  List winners = [
    [cplay[0], cplay[1], cplay[2]],
    [cplay[0], cplay[3], cplay[6]],
    [cplay[0], cplay[4], cplay[8]],
    [cplay[1], cplay[4], cplay[7]],
    [cplay[3], cplay[4], cplay[5]],
    [cplay[6], cplay[7], cplay[8]],
    [cplay[2], cplay[4], cplay[6]],
    [cplay[2], cplay[5], cplay[8]]
  ];
  List win_x = ['X', 'X', 'X'];
  List win_o = ['O', 'O', 'O'];
  print(winners);
  for (final w in winners) {
    if (ListEquality().equals(w, win_x)) {
      if (player1 == 'X') {
        print('Congratulations!, player 1 WINS !!!!');
      } else if (player2 == 'X') {
        print('Congratulations!, player 2 WINS !!!!');
      }
    } else if (ListEquality().equals(w, win_o)) {
      if (player1 == 'O') {
        print('Congratulations!, player 1 WINS !!!!');
      } else if (player2 == 'O') {
        print('Congratulations!, player 2 WINS !!!!');
      }
    }
  }
}

void main(){
  List ind = ['O', 'O', 'O', 3, 4, 5, 6, 7, 8];
  var player1 = 'X';
  var player2 = 'O';
  checkWinner(ind, player1, player2);
}