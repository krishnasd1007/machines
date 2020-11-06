import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'Battery.dart';

void main() {
  runApp(Menu());
}


class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  var ht,wt;

  Widget button() {
    return Material(
      color: Colors.blueGrey[900],
      child: IconButton(
        icon: Icon(Icons.keyboard_arrow_left),
        color: Colors.lightGreen,
        splashColor: Colors.red,
        padding: EdgeInsets.all(10),
        onPressed: () {},
      ),
    );
  }

  Widget cards(h,w,p,s,ftsz,col) {
    return Material(
      child: Container(
        height: h,
        width: w,
        padding: EdgeInsets.all(p),
        child: RaisedButton(
          textColor: Colors.white70,
          onPressed: () {},
          child: Text(s,style: TextStyle(
            fontSize: ftsz,
            fontWeight: FontWeight.bold,
          ),),
          color: col,
        ),
      ),
    );
  }

  Widget first(h,w,p,s,ftsz,col) {
    return Container(
      height: h,
      width: w,
      color: Colors.black87,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'ROBOT STATUS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: ftsz,
            ),
          ),
          cards(h, w, p, s, ftsz, col)
        ],
      ),
    );
  }

  Widget portrait(h,w,p,ftsz) {
    return Material(
      child: Container(
        height: ht,
        width: wt,
        color: Colors.blueGrey[900],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10)),
              button(),
              first(h, w, p, 'ACTIVE', ftsz, Colors.lightGreenAccent),
              cards(h, w, p, 'MACHINES', ftsz, Colors.brown),
              cards(h, w, p, 'CONTROLLER', ftsz, Colors.orangeAccent),
              cards(h, w, p, 'SUGGESTIONS', ftsz, Colors.blueAccent),
              cards(h, w, p, 'ABOUT US', ftsz, Colors.grey),
              cards(h, w, p, 'INSTAGRAM', ftsz, [
                Color(0xFFFFCC80),
                Color(0xFFFFB74D),
                Color(0xFFFF5722),
                Color(0xFFF44336),
                Color(0xFFD50000),
                Color(0xFFEC407A),
                Color(0xFFC51162),
                Color(0xFF8E24AA),
                Color(0xFF651FFF),
                Color(0xFF2962FF),
              ]),
              cards(h, w, p, 'faby.tech', ftsz, Colors.lightGreen),
              cards(h, w, p, 'LOG OUT', ftsz, Colors.brown),
            ],
          ),
        ),
      ),
    );
  }

  Widget landscape() {
    return portrait(ht*0.2,wt*0.85,ht*0.2,ht*0.1);
  }

  @override
  Widget build(BuildContext context) {
    ht = MediaQuery.of(context).size.height;
    wt = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: OrientationBuilder(
        builder: (context,orientation) {
          if (orientation == Orientation.portrait){
            return portrait(ht*0.1,wt*0.85,ht*0.1,ht*0.05);
          }else{
            return landscape();
          }
        },
      ),
    );
  }
}
