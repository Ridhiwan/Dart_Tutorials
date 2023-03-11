
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

class Male extends Human with Sleeping{
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

mixin Sleeping {
  void Sleep(){
   print("This human also sleeps sometimes");
  }
}

class Cat {
  String? name;
  String? color;

  // Constructor
  Cat( this.name, this.color);

  // factory constructor that returns a new instance
  factory Cat.fromJson(Map json) {
    return Cat(json['name'], json['color']);
  }
}

class FileSystemManager {
  static final FileSystemManager _instance = FileSystemManager._internal();

  // using a factory is important
  // because it promises to return _an_ object of this type
  // but it doesn't promise to make a new one.
  factory FileSystemManager() {
    return _instance;
  }

  // This named constructor is the "real" constructor
  // It'll be called exactly once, by the static property assignment above
  // it's also private, so it can only be called in this class
  FileSystemManager._internal() {
    // initialization logic
  }

  // rest of class as normal, for example:
  void openFile() {}
  void writeFile() {}
}

//Consuming that class will make it more clear:

void main(){
  // create a map i.e Json-file
  Map myCat = {'name': 'Mercedes-Benz', 'color': 'blue'};
  // assign to Cat instance
  Cat cat = Cat.fromJson(myCat);
  //display result
  print(cat.name);
  print(cat.color);

  Male me = Male('Konkisto',35,102.7,true);
  me.Sleep();


  // This constructor calls the factory constructor,
  // which turns around and returns the static instance
  // which was initialized with the `_internal` named constructor

  // this will be true if the two instances have the same hashcode
  // (hint: they do)
  print(FileSystemManager().hashCode == FileSystemManager().hashCode);
}