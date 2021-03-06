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
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  '??????????????????',
                  style: TextStyle(fontSize: 20),
                ),
              ), //start column container
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      child: Row(
                        children: [
                          Text(
                            '?????????????? : ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'medium sandwitch size',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        color: Colors.blue,
                        child: RichText(
                          text: TextSpan(style: TextStyle(fontSize: 18,),children: <TextSpan>[
                            TextSpan(
                              text: '???????????? : ',
                              style:
                                  TextStyle(color: Colors.white),
                            ),
                            TextSpan(
                              text: 'LG 18 inch',
                              style:
                                  TextStyle( color: Colors.white),
                            ),
                          ]),
                        )),
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      child: Row(
                        children: [
                          Text(
                            '?????????????? : ',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'medium sandwitch size',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.blue,
                      child: Row(
                        children: [
                          Text(
                            '???????????? : ',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Text(
                            'LG 18 inch',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ) //end of column container
            ],
          ),
        ));
  }
}
