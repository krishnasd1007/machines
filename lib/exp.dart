import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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

  var hl,hrp,wrp,hrl,wrl,ht,wt,hp,wp;

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

  Widget raisebutton(st,hr,wr) {
    return Container(
        height: hr,
        width: wr,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: RaisedButton(
          onPressed: () {},
          child: Text(st, style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),),
          color: Colors.lightGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
    );
  }

  Widget machine(s,h,w,hr,wr) {
    // return 
    // Material(
      // child: Card(
        return Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          height: h,
          width: w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.black87,
            boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5.0,),] 
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(s, style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),),
              raisebutton('GO',hr,wr),
              raisebutton('DETAILS',hr,wr),
            ],
          ),
        // ),
      // ),
    );
  }

  Widget row(m1,m2,h,hr,wr) {
    return Material(
      color: Colors.black87,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          machine(m1,h,wp,hr,wr),
          machine(m2,h,wp,hr,wr),
        ],
      ),
    );
  }

  Widget appbar(ha,wa) {
    return Container(
      child: Card(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        child: Container(
          height: ha,
          width: wa,
          child: Center(child: Text('MACHINES', style: TextStyle(
              color: Colors.white70, fontWeight: FontWeight.bold,fontSize: ht*0.05))),
        ),
      ),
    );
  }

  Widget portrait(h,ha,wa,hr,wr) {
    return Material(
      child: Container(
        height: ht,
        width: wt,
        color: Colors.black87,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10)),
              button(),
              appbar(ha, wa),
              row('MACHINE 1', 'MACHINE 2', h,hr,wr),
              row('MACHINE 3', 'MACHINE 4', h,hr,wr),
              row('MACHINE 5', 'MACHINE 6', h,hr,wr),
              row('MACHINE 7', 'MACHINE 8', h,hr,wr),
            ],
          ),
        ),
      )
    );
  }

  Widget landscape() {
    return Material(
      child: portrait(hl,ht*0.2,wt*0.9,hrl,wrl),
    );
  }

  @override
  Widget build(BuildContext context) {
     ht = MediaQuery.of(context).size.height;
     wt = MediaQuery.of(context).size.width;
     hp = 0.3*ht;
     wp = 0.4*wt;
     hl = 0.6*ht;
     hrp = 0.08*ht;
     wrp = 0.25*wt;
     hrl = 0.16*ht;
     wrl = 0.25*wt;
    return MaterialApp(
      home: OrientationBuilder(
        builder: (context,orientation) {
          if (orientation == Orientation.portrait){
            return portrait(hp,ht*0.1,wt*0.9,hrp,wrp);
          }else{
            return landscape();
          }
        },
      ),
    );
  }
}
