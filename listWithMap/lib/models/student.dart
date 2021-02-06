class Student {
  int id;
  String firstName;
  String lastName;
  int point;
  Student({this.firstName, this.lastName, this.point});
  Student.withId({this.id, this.firstName, this.lastName, this.point});
}
