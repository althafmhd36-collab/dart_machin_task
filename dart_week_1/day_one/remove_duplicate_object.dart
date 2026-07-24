

class Student {
  int id;
  String name;


Student(
    this.id,
    this.name
  );

  @override
  String toString(){
    return "Student(id: $id, name: $name)";
  }
}

List<Student> duplicatObjectRemove (List<Student> student){
  Set<int> seenId= {};
  List<Student> uniqStudent = [];
  

  for (Student students in  student){
    if(!seenId.contains(students.id)){
      seenId.add(students.id);
      uniqStudent.add(students);
    }
  }

  return uniqStudent;
}

void main(){
  List<Student> students =[
    Student(1, 'althaf'),
    Student(2, 'adhi'),
    Student(1, 'althaf'),
    Student(3, 'aanbi'), 
    Student(4, 'punnya'),
    Student(3, 'aanbi'),
    Student(5, 'raheem'),
  ];


  print("orginal order: $students");


List<Student> result = duplicatObjectRemove(students);

 print("removed Object : $result");
}