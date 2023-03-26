import 'dart:io';

void main(){
  print("Input a sentence below and we will reverse it :)");
  var inp = stdin.readLineSync()!;
  List sentence = inp.split(' ');
  print(sentence.reversed.join(' '));

}