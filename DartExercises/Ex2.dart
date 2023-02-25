import "dart:io";

void main(){
  print("Please enter a number: ");
  var inp = stdin.readLineSync()!;

  dynamic num = double.tryParse(inp);

  if (num.runtimeType != Null){
    if (num%2 == 0){
      print("Your number is even");
    } else {
      print("Your number is odd");
    }
  }
}