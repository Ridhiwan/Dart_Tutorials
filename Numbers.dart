import "dart:io";
import "dart:convert";

void main(){

  print("Choose any number that you can imagine and type it: ");
  var inp = stdin.readLineSync()!;

  dynamic num = double.tryParse(inp);


  //print(num.runtimeType);

  if (num.runtimeType != Null){
    if (num > 10) {
    print("Your number is greater than 10.");
   } else if (num < 10) {
    print("Your number is less than 10");
   } else if (num == 10) {
    print("Your number is equal to 10");
  }
 } else {
    print("You have entered an INVALID number.");
  }
}