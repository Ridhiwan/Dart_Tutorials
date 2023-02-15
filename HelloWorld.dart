import "dart:io";

void main() {
  dynamic myNum = 22;
  var name = "Kiazi Mbatata";
  String initi = "K.M:22./";
  int llm = 3;
  double pi = 3.14;
  bool Kweli =  true;
  bool Urongo = false;
  List data = ["This", 1, 4, "might", "not", 3,9,0, "be", "real"];
  var laugh_symbol = '\u{1f600}';

  print("Hello World!");
  print(initi);
  print(Kweli);
  print(data);
  print(laugh_symbol);

  String greeting(){
    return "How are you?";
  }

  // Functions that take in mandatory parameters
  void greetings(String greeting) {
    print(greeting);
  }

  // Functions that take in optional parameters
  void details([int telephone = 778456765]) {}

// Functions that take in optional named params
  void details2 ([String firstname='joe', String lastname='me']){}

  print(greeting());

  var sumOfDoubles = (double x, double y){
    return x + y;
  };

  print(sumOfDoubles(30.44,34.99));
  
  data.forEach((element) {print(element); });

  // The Arrow convention
  int increment(int z) => z + 1;
  print(increment(10));

  const doesOneEqualTwo = (1==2);
  print(doesOneEqualTwo);

  const doesOnentEqualTwo = (1!=2);
  print(doesOnentEqualTwo);

  if (1>1.3){
    print("Yes, 2 is greater than 1.3.");
  } else {
    print("No, the condition is False.");
  }

  String trafficLight = 'red';

  var command = '';

  if (trafficLight == 'red') {
    command = 'Stop';
  } else if (trafficLight == 'yellow') {
    command = 'Slow down';
  } else if (trafficLight == 'green') {
    command = 'Go';
  } else {
    command = 'INVALID COLOR!';
  }
  print(command);

  // Ternary Operator
  const score = 78;
  const message = (score >= 60) ? 'You passed' :'You failed';
  print(message);

  while (7<8) {
    print("That is true");
    break;
  }

  do {
    print("I am getting away with it atleast once");
  } while (7>8);

  for (double i = 0; i < 3; i++) {
    print(i);
  }

  // Using the switch case
  print("Enter the students grade i.e A,B: ");
  var grade = stdin.readLineSync()!;

  switch (grade){
    case "A":
      print("Fantabolous");
      break;
    case "B":
      print("Not bad");
      break;
    case "C":
      print("Mhhmmmm");
      break;
    case "D":
      print("Omoooooo");
      break;
    case "F":
      print("Pull up your socks");
      break;
    default:
      print("Please enter a valid grade i.e A,B");
      break;
  }

  dynamic num = 78;
  dynamic num1 = "56";
  dynamic check = double.tryParse(num);

  print(num.runtimeType);



}