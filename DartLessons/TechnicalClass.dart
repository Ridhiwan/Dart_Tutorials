class School {
  String? name;
  String? district;
  int? no_streams;
  DateTime? founding;

  School(name,district,no_streams,founding){
    this.name = name;
    this.district = district;
    this.no_streams = no_streams;
    this.founding = DateTime.parse(founding);
  }

  basicInfo(){
    print("Name of school: $name");
    print("School district: $district");
  }

  details(){
    print("Name of school: $name");
    print("School district: $district");
    print(no_streams);
    print(founding);
  }

}
// extends doesnt override the Parent class
class Stream extends School{
  Stream(super.name, super.district, super.no_streams, super.founding);

  stream(streamID,noStudents,noSubjects){
    print('The stream is $streamID');
    print('The number of students is $noStudents');
    print('The number of subjects is $noSubjects');
  }

}

// implements overrides class School and creates an interface
class Teacher implements School {

  @override
  String? district;

  @override
  DateTime? founding;

  @override
  String? name;

  @override
  int? no_streams;

  @override
  basicInfo() {
    // TODO: implement basicInfo
    throw UnimplementedError();
  }

  @override
  details() {
    // TODO: implement details
    throw UnimplementedError();
  }

  String? nameTeacher;
  int? age;
  String? subjectName;
  Teacher(nameTeacher,age,subjectName){
    this.nameTeacher = nameTeacher;
    this.age = age;
    this.subjectName = subjectName;
  }

  infoInstructor(){
    print('The name of the Teacher is $nameTeacher');
    print('The subject they teach is $subjectName');
  }
}

void main() {
  School mySchool = School("Ujuguu Koko Secondary School",
      "Ilala", 8, '1996-20-09');
  mySchool.basicInfo();
  mySchool.details();

  Stream myStream = Stream("Ujuguu Koko Secondary School",
      "Ilala", 8, '1996-20-09');
  myStream.basicInfo();
  myStream.stream("A", 25, 6);

  Teacher myTeacher = Teacher('Zuwena',23,'Math');
  myTeacher.infoInstructor();
}

