import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Test extends StatefulWidget {
  const Test({Key key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  Future getData() async {
    var _url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.get(_url);
    var responseBody = jsonDecode(response.body);
    return responseBody;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('test'),
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(itemCount: snapshot.data.length, itemBuilder: (context,i){
                return Container(child: Text(snapshot.data[i]['title']),);
              });
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}