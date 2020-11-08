import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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

  Widget image(h,w) {
    return Container(
      height: h,
      width: w,
      child: Image.asset(''),
    );
  }

  Widget login(s,h,w) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              s,
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
            Container(
              height: h,
              width: w,
              child: TextFormField(
                style: TextStyle(color: Colors.white70),
                decoration: InputDecoration(
                  focusColor: Colors.black87,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget raisebutton(hr,wr,ftsz) {
    return Container(
      height: hr,
      width: wr,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: RaisedButton(
        onPressed: () {},
        child: Text('LOGIN', style: TextStyle(
          color: Colors.white70,
          fontWeight: FontWeight.bold,
          fontSize: ftsz,
        ),),
        color: Colors.lightGreenAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    );
  }

  Widget portrait(hi,wi,hl,wl,hr,wr,ftsz) {
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
              image(hi, wi),
              login('USERNAME', hl, wl),
              login('PASSWORD', hl, wl),
              raisebutton(hr, wr, ftsz),
            ],
          ),
        ),
      ),
    );
  }

  Widget landscape() {
    return portrait(ht*0.4,wt*0.4,ht*0.2,wt*0.8,ht*0.2,wt*0.1,ht*0.2);
  }

  @override
  Widget build(BuildContext context) {
    ht = MediaQuery.of(context).size.height;
    wt = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: OrientationBuilder(
        builder: (context,orientation) {
          if (orientation == Orientation.portrait){
            return portrait(ht*0.2,wt*0.4,ht*0.1,wt*0.8,ht*0.1,wt*0.1,ht*0.1);
          }else{
            return landscape();
          }
        },
      ),
    );
  }
}
