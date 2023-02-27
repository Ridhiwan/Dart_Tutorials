import 'dart:io';

void main(){
  print("Please enter any word: ");
  var inp = stdin.readLineSync()!;
  var char = inp.split('');
  String rev = char.reversed.join('');

  if (inp == rev){
    print("$inp is a palindrome");
  } else {
    print("$inp is not a palindrome");
  }
}

