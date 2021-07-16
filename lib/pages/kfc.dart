import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Kfc extends StatefulWidget {
  @override
  _KfcState createState() => _KfcState();
}

class _KfcState extends State<Kfc> {

  var mobileList=[{
    'name':'Big Sandwitch',
    'camera': 'multiple salads',
    'cpu' : 'your stomach',
    'battery' : '5000 mha',
    'price' : '89.00 L.E'
  },
    {
      'name':'medium Sandwitch',
      'camera': 'some salads',
      'cpu' : 'your mouth',
      'battery' : '3000 mha',
      'price' : '95.00 L.E'
    },
    {
      'name':'small Sandwitch',
      'camera': 'one salad',
      'cpu' : 'your ear',
      'battery' : '3999 mha',
      'price' : '105.00 L.E'
    }];
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('كنتاكي'),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemCount: mobileList.length,
            itemBuilder: (context, i){
              return MobileList(name: mobileList[i]['name'],cpu: mobileList[i]['cpu'],
              battery: mobileList[i]['battery'],
              camera: mobileList[i]['camera'],
              memory: mobileList[i]['memory'],
              price: mobileList[i]['price'],);
            },
          ),
        ));
  }
}

class MobileList extends StatelessWidget{

  final name;
  final camera;
  final price;
  final cpu;
  final memory;
  final battery;
  MobileList({this.name, this.camera, this.price, this.cpu, this.memory, this.battery});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      child: Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(2),
        padding: EdgeInsets.all(5),
        child: Card(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child:
                Image.asset('imgs/products/kfc/BigFillerSmall.jpg'),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                      alignment: Alignment.topRight,
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 1,
                            child: Text(
                              name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Expanded(
                                    child: Row(children: [
                                      Text(camera,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17)),
                                    ])),
                                Expanded(
                                    child: Text(
                                      cpu,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    )),
                              ],
                            ),
                          ),
                          Expanded(flex: 1,
                            child: Container(
                                child: Text(
                                  battery,
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 18),
                                )),
                          )
                        ],
                      ))),
            ],
          ),
        ),
      ),
      onTap: (){
        Navigator.of(context).pushNamed('kfcdetails');
      },);
  }
}