import 'dart:io';

void main(){
  dynamic oddEven(){
    print("Choose any number and we will guess its type: ");
    var inp = stdin.readLineSync()!;
    dynamic num = double.tryParse(inp);

    if (num.runtimeType != Null){
      if (num%2 == 0){
        print("Your number is even");
      } else {
        print("Your number is odd");
      }
    } else {
      print("You have entered an invalid number");
    }
  }

  oddEven();

}