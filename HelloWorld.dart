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

  int increment(int z) => z + 1;
  print(increment(10));

}