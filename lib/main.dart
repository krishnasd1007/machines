import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Machines());
}

class Machines extends StatefulWidget {
  @override
  _MachinesState createState() => _MachinesState();
}

class _MachinesState extends State<Machines> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MachinesPage(),
    );
  }
}

class MachinesPage extends StatefulWidget {
  @override
  _MachinesPageState createState() => _MachinesPageState();
}

class _MachinesPageState extends State<MachinesPage> {

  var ht;
  var wt;
  var hp;
  var wp;
  var hl;

  Widget button() {
    return Material(
      child: IconButton(
        icon: Icon(Icons.keyboard_arrow_left),
        color: Colors.lightGreen,
        splashColor: Colors.red,
        padding: EdgeInsets.all(10),
        onPressed: () {},
      ),
    );
  }

  Widget raisebutton(st) {
    return Material(
      child: RaisedButton(
        onPressed: () {},
        child: Text(st, style: TextStyle(
          color: Colors.white70,
          fontWeight: FontWeight.bold,
        ),),
        color: Colors.lightGreen,
      ),
    );
  }

  Widget machine(s,h,w) {
    return Material(
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10.0),
          height: h,
          width: w,
          color: Colors.black87,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(s, style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),),
              raisebutton('GO'),
              raisebutton('DETAILS'),
            ],
          ),
        ),
      ),
    );
  }

  Widget row(m1,m2,h) {
    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          machine(m1,h,wp),
          machine(m2,h,wp),
        ],
      ),
    );
  }

  Widget portrait(h) {
    return Material(
      color: Colors.blueGrey[900],
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            button(),
            row('MACHINE 1', 'MACHINE 2', h),
            row('MACHINE 3', 'MACHINE 4', h),
            row('MACHINE 5', 'MACHINE 6', h),
            row('MACHINE 7', 'MACHINE 8', h),
          ],
        ),
      )
    );
  }

  Widget landscape() {
    return Material(
      child: portrait(hl),
    );
  }

  @override
  Widget build(BuildContext context) {
     ht = MediaQuery.of(context).size.height;
     wt = MediaQuery.of(context).size.width;
     hp = 0.3*ht;
     wp = 0.4*wt;
     hl = 0.6*ht;
    return MaterialApp(
      home: OrientationBuilder(
        builder: (context,orientation) {
          if (orientation == Orientation.portrait){
            return portrait(hp);
          }else{
            return landscape();
          }
        },
      ),
    );
  }
}
