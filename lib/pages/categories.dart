import 'package:flutter/material.dart';
import 'package:mobtech/component/drawer.dart';

class Categories extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('الأقسام'),
            centerTitle: true,
          ),
          drawer: MyDrawer(),
          body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: <Widget>[
              //start cat 1
              InkWell(child: Card(
                child: Column(children: <Widget>[
                  Expanded(child: Image.asset('imgs/brands/kfc.png', fit: BoxFit.cover,)),
                  Container(child: Text('KFC', style: TextStyle(fontSize: 20, color: Colors.red),)),
                ],),), onTap: (){
                Navigator.of(context).pushNamed('kfc');
              },),// end cat 1
              //start cat 2
              Container(child: Card(
                child: Column(children: <Widget>[
                  Expanded(child: Image.asset('imgs/brands/bazooka.jpg', fit: BoxFit.cover,)),
                  Container(child: Text('Bazooka', style: TextStyle(fontSize: 20, color: Colors.red),)),
                ],),
              ),), // end cat 2
              // start cat 3
              Container(child: Card(
                child: Column(children: <Widget>[
                  Expanded(child: Image.asset('imgs/brands/macdonalds.png', fit: BoxFit.cover,)),
                  Container(child: Text('McDonalds', style: TextStyle(fontSize: 20, color: Colors.red),)),
                ],),
              ),), // end cat 3
              Container(child: Card(
                child: Column(children: <Widget>[
                  Expanded(child: Image.asset('imgs/brands/burgerking.png', fit: BoxFit.cover,)),
                  Container(child: Text('Burger King', style: TextStyle(fontSize: 20, color: Colors.red),)),
                ],),
              ),),
            ],
          )
        ));
  }
}
