import 'package:flutter/material.dart';
import 'package:listWithMap/models/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Student> students = [
    Student.withId(id: 1, firstName: 'Ahmet', lastName: 'Zor', point: 90),
    Student.withId(id: 2, firstName: 'Ümit', lastName: 'Güzel', point: 90),
    Student.withId(id: 3, firstName: 'Bülent', lastName: 'Kolay', point: 90),
    Student.withId(id: 1, firstName: 'Ahmet', lastName: 'Zor', point: 90),
    Student.withId(id: 2, firstName: 'Ümit', lastName: 'Güzel', point: 90),
    Student.withId(id: 3, firstName: 'Bülent', lastName: 'Kolay', point: 90),
    Student.withId(id: 1, firstName: 'Ahmet', lastName: 'Zor', point: 90),
    Student.withId(id: 2, firstName: 'Ümit', lastName: 'Güzel', point: 90),
    Student.withId(id: 3, firstName: 'Bülent', lastName: 'Kolay', point: 90),
    Student.withId(id: 1, firstName: 'Ahmet', lastName: 'Zor', point: 90),
    Student.withId(id: 2, firstName: 'Ümit', lastName: 'Güzel', point: 90),
    Student.withId(id: 3, firstName: 'Bülent', lastName: 'Kolay', point: 90),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Öğrenci Listesi'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: students.map((student) {
            return studentCard(student);
          }).toList(),
        ),
      ),
      bottomNavigationBar: myBottomAppBar(),
    );
  }

  BottomAppBar myBottomAppBar() {
    return BottomAppBar(
        color: Colors.redAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print("Home button pressed");
              },
            ),
            IconButton(
              icon: Icon(Icons.backpack),
              onPressed: () {
                print("Back button pressed");
              },
            )
          ],
        ));
  }

  Row studentCard(Student student) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/29948613?s=400&u=758c928f029b4b3fca7bf0a394ffac385b6d4066&v=4'),
          backgroundColor: Colors.grey[500],
          radius: 30,
        ),
        Expanded(
          flex: 1,
          child: Container(
              alignment: Alignment.topLeft,
              color: Colors.grey[500],
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(student.firstName,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Text(student.lastName),
                    Text(student.point.toString())
                  ])),
        ),
      ],
    );
  }
}
