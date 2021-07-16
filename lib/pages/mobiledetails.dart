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
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      appBar: AppBar(
        title: Text('bla bla bla details'),
        centerTitle: true,
      ),
      body: Container(
        child: Text('mobile details page'),
      ),
    ));
  }
}