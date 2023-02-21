import "dart:io";

void main(){
  print("Please enter your Full name i.e Adam Juma: ");
  var fname = stdin.readLineSync()!;
  print("Hi $fname how old are you? ");
  var age = stdin.readLineSync()!;

  dynamic userAge = int.tryParse(age);

  if (userAge.runtimeType != Null){
    if (userAge <= 100 && userAge >= 0){
      dynamic rmnAge = (100 - userAge);
      print("$fname you have $rmnAge years remaining to reach 100 years!");

    } else if (userAge > 100){
      print("$fname you are more than 100 years old!");
    } else{
      print("You have entered an invalid age");
    }
  } else{
    print("You have entered and invalid age");
  }
}