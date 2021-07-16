import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KFCDetails extends StatefulWidget {
  const KFCDetails({Key key}) : super(key: key);

  @override
  _KFCDetailsState createState() => _KFCDetailsState();
}

class _KFCDetailsState extends State<KFCDetails> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('bla bla bla details'),
            centerTitle: true,
          ),
          body: ListView(
            children: <Widget>[
              Container(
                height: 300,
                child: GridTile(
                  child: Image.asset('imgs/meat.png'),
                  footer: Container(
                      height: 80,
                      color: Colors.black.withOpacity(0.4),
                      child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'BIG SIZE',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  '199L.E',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ))),
                ),
              )
            ],
          ),
        ));
  }
}
