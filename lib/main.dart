import 'package:flutter/material.dart';
import 'package:mobtech/pages/home.dart';
import 'package:mobtech/pages/categories.dart';
import 'package:mobtech/pages/kfc.dart';
import 'package:mobtech/pages/mobiledetails.dart';
import 'package:mobtech/pages/test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MobTech',
        theme: ThemeData(fontFamily: 'Cairo'),
        home: Test(),
        routes:{
          'categories':(context){return Categories();},
          'homepage':(context){return Home();},
          'kfc': (context){return Kfc();},
          'kfcdetails': (context){return KFCDetails();},
        }
    );
  }
}