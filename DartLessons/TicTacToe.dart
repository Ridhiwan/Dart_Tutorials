import 'dart:io';
import 'package:collection/collection.dart';

// We will make a tic tac toe game

/* The layout of the game:
    o|x|x
    x|o|x
    o|x|x
 */

class Play{
  List? selectPlayer() {
    print("Choose the letter you wish to use: type X or O.");
    var player = stdin.readLineSync()!;
    if (player == 'x' || player == 'X') {
      var lettertoplay1 = 'X';
      var lettertoplay2 = 'O';
      return [lettertoplay1,lettertoplay2];
    } else if (player == 'o' || player == 'O') {
      var lettertoplay1 = 'O';
      var lettertoplay2 = 'X';
      return [lettertoplay1,lettertoplay2];
    } else {
      print("Please choose the correct letter.");
      return selectPlayer();
    }
  }
  int? selectIndex(List list) {
    print("Choose the position you want to play in the game:");
    displayDashboard(list: list);
    var indtoplay = int.tryParse(stdin.readLineSync()!);
    if (indtoplay.runtimeType != Null && indtoplay! >= 0 && indtoplay! <= 8){
      return indtoplay;
    } else {
      print("Please choose the correct index.");
      // returning the function does complete recursion than calling it
      return selectIndex(list);
    }
  }
}

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
  for (final w in winners) {
    if (ListEquality().equals(w, win_x)) {
      if (player1 == 'X') {
        print('Congratulations!, player 1 WINS !!!!');
        displayWinner(cplay);
        exit(0);
      } else if (player2 == 'X') {
        print('Congratulations!, player 2 WINS !!!!');
        displayWinner(cplay);
        exit(0);
      }
    } else if (ListEquality().equals(w, win_o)) {
      if (player1 == 'O') {
        print('Congratulations!, player 1 WINS !!!!');
        displayWinner(cplay);
        exit(0);
      } else if (player2 == 'O') {
        print('Congratulations!, player 2 WINS !!!!');
        displayWinner(cplay);
        exit(0);
      }
    }
  }
}

List newList(List list,{var index = 0, var play = 'X'}){
  List ind = list;
  ind[index] = play;
  return ind;
}

// The default parameter must be constant so we use const
void displayDashboard({List list = const [0,1,2,3,4,5,6,7,8]}) {
  var ind = list;
  //List ind = ['x', 'o', 'x', 'o', 'o', 'x', 'x', 'x', 'o'];
  print('_________');
  for (var i = 0; i < 3; i++) {
    print('${ind[3 * i]} | ${ind[(3 * i) + 1]} | ${ind[(3 * i) + 2]}');
    if (i < 2) {
      print('__*___*__');
    } else {
      print('_________');
    }
  }
}

// This functions takes a list and displays the winner
void displayWinner(List list) {
  var ind = list;
  //List ind = ['x', 'o', 'x', 'o', 'o', 'x', 'x', 'x', 'o'];
  print('_________');
  for (var i = 0; i < 3; i++) {
    print('${ind[3 * i]} | ${ind[(3 * i) + 1]} | ${ind[(3 * i) + 2]}');
    if (i < 2) {
      print('__*___*__');
    } else {
      print('_________');
    }
  }
}



void main(){
  // This is a list we begin with to display the playable positions
  List ind = [0,1,2,3,4,5,6,7,8];
  Play player = Play();

  // Set players
  var players = player.selectPlayer();
  // use the bang operator only when sure the list will never be null
  // var player2 = players![1];
  // We use the question marks to avoid null, if null whatever
  // is described after ?? will be the value of the variable
  //var player1 = players?[0] ?? 'X';
  var player1 = players![0];
  var player2 = players![1];
  checkWinner(ind, player1, player2);
  List played = [];

  // Tic tac toe till it ends
  for (var i = 0; i < 5; i++) {
    int? position() {
      var place = player.selectIndex(ind);
      if (played.contains(place)) {
        print("Choose a position which has not been played");
        return position();
      }
      return place;
    }
    var position1 = position();
    played.add(position1);
    // This is the style to override default parameters in a function
    // ind is referenced twice to update it
    ind = newList(ind, index: position1, play: player1);
    // Check if there is a winner
    checkWinner(ind, player1, player2);
    if (i == 4) {
      print("It is a DRAW!!!");
      displayWinner(ind);
      break;
    } else {
      var position2 = position();
      played.add(position2);
      ind = newList(ind, index: position2, play: player2);
      // Check if there is a winner
      checkWinner(ind, player1, player2);
    }
  }
}
