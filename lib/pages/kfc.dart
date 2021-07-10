import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Kfc extends StatefulWidget {
  @override
  _KfcState createState() => _KfcState();
}

class _KfcState extends State<Kfc> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('كنتاكي'),
            centerTitle: true,
          ),
          body: ListView(
            children: <Widget>[
              //start list
              InkWell(
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
                                        'Big Filler Small',
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
                                            Text('صدور دجاج كبيرة',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17)),
                                          ])),
                                          Expanded(
                                              child: Text(
                                                '3 قطع',
                                                style: TextStyle(
                                                    color: Colors.black, fontSize: 17),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Expanded(flex: 1,
                                      child: Container(
                                          child: Text(
                                            'السعر : 125 ج.م',
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
                  print('details');
              },)
              //end list
            ],
          ),
        ));
  }
}
