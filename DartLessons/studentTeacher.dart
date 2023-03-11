class Teacher{
  String? name;
  int? age;
  String subject;

  Teacher(this.name,this.age,this.subject);

  void display(){
    print("Teacher ${this.name} is ${this.age} and teaches ${this.subject}.");
  }
}

class Student{
  String? name;
  int? age;
  String stream;

  Student(this.name,this.age,this.stream);

  void display(){
    print("Student ${this.name} is ${this.age} and is in class ${this.stream}.");
  }
}

void main(){
  Student stm = Student('Thomas', 11, 'A');
  Teacher tm = Teacher('Mosa', 24, 'Physics');
  stm.display();
  tm.display();

}
