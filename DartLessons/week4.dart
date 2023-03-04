class Animal {
  String? name;
  int? numberofLegs;
  int? lifeSpan;

  void display(){
    print("Animal name: $name");
    print("Number of legs: $numberofLegs");
    print("The life span: $lifeSpan");

  }


}

void main(){
  Animal animal = Animal(); // Create and object of animal class
  animal.name = "Cat";
  animal.numberofLegs = 7;
  animal.lifeSpan = 10;
  animal.display();

  rectangle rect = rectangle();
  print("The area of the rectangle is ${rect.area()}");
}

class rectangle {
  double length = 12.2;
  double width = 5.3;

  double area(){
    return length*width;
  }
}

