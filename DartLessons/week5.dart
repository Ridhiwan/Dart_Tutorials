
class Human {
  // Constructor
  Human(
    String this.name,
    int this.age,
    double this.weight,
      bool this.isFemale
      );

  // Properties
  String? name;
  int? age;
  double? weight;
  bool? isFemale;

  void eating(){
    print("${this.name} is eating");
  }

}

class Female extends Human {
  // constructor
  // super is allowing female to create its own constructor
  // that inherits from Human constructor
  Female( String name, int age, double weight, bool isFemale)
  :super(name,age,weight,true);

  @override
  void eating(){
    print("${this.name} is definitely a girl and she doesnt eat :)");
  }
}

class Male extends Human {
  // constructor
  // super is allowing female to create its own constructor
  // that inherits from Human constructor
  Male( String name, int age, double weight, bool isFemale)
      :super(name,age,weight,false);

  @override
  void eating(){
    print("I dont know");
  }

}