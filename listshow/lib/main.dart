import 'package:flutter/material.dart';
import 'package:listshow/models/Student.dart';

final Color darkBlue = Color.fromRGBO(0, 0, 255, 100);
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  final List<Student> students = [
    Student.withId(1, 'Bülent', 'Can', 95),
    Student.withId(2, 'Burak', 'Canan', 100),
    Student.withId(3, 'Serra', 'Canan', 90),
    Student.withId(3, 'Serap', 'Can', 90),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('İlk Projem'),
          centerTitle: true,
        ),
        body: buildBody(students));
  }

  Widget buildBody(List<Student> students) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(students[index].firstName +
                      " " +
                      students[index].lastName),
                  subtitle: Row(
                    children: [
                      Text('Sınav Notu :'),
                      Text(students[index].grade.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'http://www.haberdenhaber.com/images/haberler/japonlar_kutahyaya_hayran_kaldi_h198041.jpg')),
                );
              }),
        )
      ],
    );
  }
}
