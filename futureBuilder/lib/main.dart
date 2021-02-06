import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:futureBuilder/models/post.dart';
import 'package:http/http.dart' as http;

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
  Future<List<Post>> _getData() async {
    http.Response res =
        await http.get('https://jsonplaceholder.typicode.com/posts');
    var jsonData = json.decode(res.body);
    List<Post> posts = [];
    for (var p in jsonData) {
      Post post = Post(
          userId: p['userId'], id: p['id'], title: p['title'], body: p['body']);
      posts.add(post);
    }

    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Future Builder Örneği')),
          body: Container(
            child: FutureBuilder(
              future: _getData(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
                if (snapshot.data == null) {
                  return Center(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(
                            semanticsLabel: "Yükleniyor",
                          ),
                          Text('Loading...'),
                        ],
                      ),
                    ),
                  );
                } else {
                  // return Column(
                  //   children: snapshot.data.map((dt) {
                  //     Text('dt.title');
                  //   }).toList(),
                  // );
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                            child: ListTile(
                          title: Text('Title: ' + snapshot.data[index].title),
                          subtitle: Text(snapshot.data[index].body),
                        ));
                      });
                }
              },
            ),
          )),
    );
  }
}
