import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'Battery.dart';
//import 'Suggestion.dart';

void main() {
  runApp(MenuMain());
}

class MenuMain extends StatefulWidget {
  @override
  _MenuMainState createState() => _MenuMainState();
}

class _MenuMainState extends State<MenuMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blueGrey[900],
      home: Menu(),
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  Widget portrait() {
    return MaterialApp(
      home: Material(
        color: Colors.blueGrey[900],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.05),),
              Material(
                color: Colors.blueGrey[900],
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_left),
                  color: Colors.lightGreen,
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => BatteryTemp()),);
                  },
                  splashColor: Colors.red,
                  padding: EdgeInsets.all(10.0),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.05),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.2,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('ROBOT STATUS',style: TextStyle(color: Colors.white70),),
                      Container(
                        height: (MediaQuery.of(context).size.height)*0.08,
                        width: (MediaQuery.of(context).size.width)*0.86,
                        child: RaisedButton(
                          textColor: Colors.white70,
                          onPressed: () {},
                          child: Text('ACTIVE',style: TextStyle(fontWeight: FontWeight.bold),),
                          color: Colors.lightGreen,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.03),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.1,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.08,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.01),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Text('MACHINES',style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.03),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.1,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.08,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.01),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Text('CONTROLLER',style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.03),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.1,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.08,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.01),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Text('SUGGESTIONS',style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.03),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.1,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.08,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.01),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Text('ABOUT US',style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.03),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.1,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.08,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.01),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Container(
                        height: (MediaQuery.of(context).size.height)*0.08,
                        width: (MediaQuery.of(context).size.width)*0.8,
                        child: Scaffold(
                          body: Stack(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
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
                                    ],
                                  ),
                                ),
                              ),
                              Text('INSTAGRAM',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        //Text('INSTAGRAM',style: TextStyle(fontWeight: FontWeight.bold),),),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.03),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.1,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.08,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.01),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Text('faby.tech',style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.03),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.1,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.08,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.01),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Text('LOG OUT',style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget landscape() {
    return MaterialApp(
      home: Material(
        color: Colors.blueGrey[900],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.1),),
              Material(
                color: Colors.blueGrey[900],
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_left),
                  color: Colors.lightGreen,
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => BatteryTemp()),);
                  },
                  splashColor: Colors.red,
                  padding: EdgeInsets.all(10.0),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.1),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.4,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('ROBOT STATUS',style: TextStyle(color: Colors.white70),),
                      Container(
                        height: (MediaQuery.of(context).size.height)*0.16,
                        width: (MediaQuery.of(context).size.width)*0.88,
                        child: RaisedButton(
                          textColor: Colors.white70,
                          onPressed: () {},
                          child: Text('ACTIVE',style: TextStyle(fontWeight: FontWeight.bold),),
                          color: Colors.lightGreen,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.06),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.2,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.16,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.02),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Text('MACHINES',style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.06),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.2,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.16,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.02),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Text('CONTROLLER',style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.06),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.2,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.16,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.02),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Text('SUGGESTIONS',style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.06),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.2,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.16,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.02),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Text('ABOUT US',style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.06),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.2,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.16,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.02),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Text('INSTAGRAM',style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.06),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.2,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.16,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.02),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Text('faby.tech',style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height)*0.06),),
              Card(
                child: Container(
                  height: (MediaQuery.of(context).size.height)*0.2,
                  width: (MediaQuery.of(context).size.width)*0.9,
                  color: Colors.black87,
                  child: Container(
                    height: (MediaQuery.of(context).size.height)*0.16,
                    width: (MediaQuery.of(context).size.width)*0.8,
                    padding: EdgeInsets.all((MediaQuery.of(context).size.height)*0.02),
                    child: RaisedButton(
                      textColor: Colors.white70,
                      onPressed: () {},
                      child: Text('LOG OUT',style: TextStyle(fontWeight: FontWeight.bold),),
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blueGrey[900],
      home: OrientationBuilder(
        builder: (context,orientation) {
          if (orientation == Orientation.portrait){
            return portrait();
          }else{
            return landscape();
          }
        },
      ),
    );
  }
}
