import 'dart:io';
import 'dart:math';

class PasswordGenerator{
  String strong_source = "abcdefghijklmniopqrstuvwxyzABCDEFGHIJKLMNIOPQRSTUVWXYZ123"
      "4567890()~!#%^&*{}[]";
  List weak_source = ['Today', 'tomorrow', 'earlythatnight', 'memyselfandI',
    'teamblue', 'organizedcrime', 'igetitnow', 'trymeagain'];
  final __random = Random.secure();

  void Strong(){
    List passList = [];
    for (var i=0;i < 15;i++){
      passList.add(strong_source[__random.nextInt(strong_source.length)]);
    };
    print("Copy your password below and do not share it.");
    print(passList.join(''));
  }

  void Medium(){
    List passList = [];
    for (var i=0;i < 8;i++){
      passList.add(strong_source[__random.nextInt(strong_source.length)]);
    };
    print("Copy your password below and do not share it.");
    print(passList.join(''));
  }

  void Weak(){
    print("Copy your password below and do not share it.");
    print(weak_source[__random.nextInt(strong_source.length)]);
  }
}



void main() {
  void getPassword() {
    print("What type of password do you want? Choose by typing a number i.e 2\n"
        "1. Strong\n"
        "2. Medium\n"
        "3. Weak");
    var inp = int.tryParse(stdin.readLineSync()!);
    PasswordGenerator password = PasswordGenerator();
    if (inp.runtimeType != Null) {
      if (inp == 1 ) {
        password.Strong();
      } else if (inp == 2) {
        password.Medium();
      } else if (inp == 3) {
        password.Weak();
      } else {
        print("Please type in a number ie. 1,2");
        sleep(Duration(seconds:2));
        getPassword();
      }
    } else{
      print("Please type in a number between 1 and 3.");
      sleep(Duration(seconds:2));
      getPassword();
    }
  }

  getPassword();
}