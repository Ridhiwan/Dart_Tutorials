import 'dart:io';

class Fibonacci {
  String? nums;
  List Fibo = [0, 1];

  //String? inp;

  void generateNumbers() {
    print("How many Fibonacci numbers do you want: ");
    var inp = stdin.readLineSync()!;

    // I had problems with tryParse because of null safety
    // so we use error handling to catch errors
    try {
      dynamic len = int.parse(inp);
      if (len <= 2 && len > 0) {
        print(Fibo.sublist(0,len));
      } else if (len > 0 && len > 2) {
        for (int i = 0; i <= (len - 3); i++) {
          int next = Fibo[i] + Fibo[i + 1];
          Fibo.add(next);
        }
      } else {
        print("You have entered an Invalid number");
      }
      print(Fibo);
    } catch(ex){
      print("Try entering a real positive integer i.e 3,4,5");
    }
  }
}
void main(){
  Fibonacci myfib = Fibonacci();
  myfib.generateNumbers();
}