import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:mobtech/component/drawer.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mobtech'),
          backgroundColor: Colors.red,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {})
          ],
          centerTitle: true,
          elevation: 6,
          // titleSpacing: 20,
          // brightness: Brightness.light,
          // primary: false,
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: <Widget>[
            Container(
              height: 600.0,
              width: double.infinity,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: false,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 8.0,
                dotIncreaseSize: 2,
                dotIncreasedColor: Colors.red,
                dotBgColor: Colors.black.withOpacity(0.5),
                dotSpacing: 20,
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding: 10.0,
                showIndicator: true,
                indicatorBgPadding: 55.0,
                overlayShadow: true,
                overlayShadowColors: Colors.green,
                images: [
                  Image.asset(
                    'imgs/meat.png',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'imgs/seafood.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            //end of carousel
            Container(padding: EdgeInsets.all(10),child: Text("الأقسام", style: TextStyle(fontSize: 30, color: Colors.red),),),
            //start Cat
            Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title: Image.asset('imgs/meat.png'),
                          subtitle: Container(child: Text('Samsung', textAlign: TextAlign.center,), ),
                        )),
                    Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title: Image.asset('imgs/meat.png'),
                          subtitle: Container(child: Text('Samsung', textAlign: TextAlign.center,), ),
                        )),
                    Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title: Image.asset('imgs/meat.png'),
                          subtitle: Container(child: Text('Samsung', textAlign: TextAlign.center,), ),
                        )),
                    Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title: Image.asset('imgs/meat.png'),
                          subtitle: Container(child: Text('Samsung', textAlign: TextAlign.center,), ),
                        )),
                    Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title: Image.asset('imgs/meat.png'),
                          subtitle: Container(child: Text('Samsung', textAlign: TextAlign.center,), ),
                        )),
                    Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title: Image.asset('imgs/meat.png'),
                          subtitle: Container(child: Text('Samsung', textAlign: TextAlign.center,), ),
                        )),
                    Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title: Image.asset('imgs/meat.png'),
                          subtitle: Container(child: Text('Samsung', textAlign: TextAlign.center,), ),
                        )),
                    Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title: Image.asset('imgs/meat.png'),
                          subtitle: Container(child: Text('Samsung', textAlign: TextAlign.center,), ),
                        )),
                    Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title: Image.asset('imgs/meat.png'),
                          subtitle: Container(child: Text('Samsung', textAlign: TextAlign.center,), ),
                        )),
                    Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title: Image.asset('imgs/meat.png'),
                          subtitle: Container(child: Text('Samsung', textAlign: TextAlign.center,), ),
                        )),
                    Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title: Image.asset('imgs/meat.png'),
                          subtitle: Container(child: Text('Samsung', textAlign: TextAlign.center,), ),
                        )),

                  ],
                )),
            //end Cat
            Container(padding: EdgeInsets.all(10),child: Text("آخر المنتجات", style: TextStyle(fontSize: 30, color: Colors.red),),),
            //start latest products
            Container(height:700,child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: <Widget>[
                InkWell(child: GridTile(child: Image.asset('imgs/products/sandwitches.jpg'), footer: Container(color:Colors.black.withOpacity(0.5), child: (Text('Food', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 30), textAlign: TextAlign.center,)),),),
                onTap: (){print('i am mohamed');},),
                GridTile(child: Image.asset('imgs/products/sandwitches.jpg'), footer: Container(color:Colors.black.withOpacity(0.5), child: (Text('Food', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 30), textAlign: TextAlign.center,)),),),
                GridTile(child: Image.asset('imgs/products/sandwitches.jpg'), footer: Container(color:Colors.black.withOpacity(0.5), child: (Text('Food', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 30), textAlign: TextAlign.center,)),),),
                GridTile(child: Image.asset('imgs/products/sandwitches.jpg'), footer: Container(color:Colors.black.withOpacity(0.5), child: (Text('Food', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 30), textAlign: TextAlign.center,)),),),
                GridTile(child: Image.asset('imgs/products/sandwitches.jpg'), footer: Container(color:Colors.black.withOpacity(0.5), child: (Text('Food', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 30), textAlign: TextAlign.center,)),),),
              ],
            ))
            // end
          ],
        ),
      ),
    );
  }
}