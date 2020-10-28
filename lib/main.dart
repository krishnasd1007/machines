import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
//import 'Menu.dart';

void main() {
  runApp(Control());
}

class Control extends StatefulWidget {
  @override
  _ControlState createState() => _ControlState();
}

class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blueGrey[900],
      home: ControlPage(),
    );
  }
}


class ControlPage extends StatefulWidget {
  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {

  Widget portrait() {
    return MaterialApp(
      home: Material(
        color: Colors.blueGrey[900],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: (MediaQuery.of(context).size.height)*0.1,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_left),
                  color: Colors.lightGreen,
                ),,
              ),
              Container(
                height: (MediaQuery.of(context).size.height)*0.1,
                child: SliderButton(
                  action: () {},
                  label: Text('MANUAL'),
                  icon: Center(child: Icon(Icons.control_point,color: Colors.lightGreen,),),
                ),
              ),
              Container(
                height: (MediaQuery.of(context).size.height)*0.3,
                width: (MediaQuery.of(context).size.width),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: (MediaQuery.of(context).size.height)*0.1,
                      width: (MediaQuery.of(context).size.width),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_up),
                        color: Colors.deepOrange,
                      ),
                    ),
                    Container(
                      height: (MediaQuery.of(context).size.height)*0.1,
                      width: (MediaQuery.of(context).size.width),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_left) ,
                            color: Colors.deepOrange,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_right) ,
                            color: Colors.deepOrange,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: (MediaQuery.of(context).size.height)*0.1,
                      width: (MediaQuery.of(context).size.width),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_down),
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: (MediaQuery.of(context).size.height)*0.3,
                width: (MediaQuery.of(context).size.width),
                child: Card(
                  color: Colors.blueGrey,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: (MediaQuery.of(context).size.height)*0.1,
              ),
              Container(
                height: (MediaQuery.of(context).size.height)*0.1,
                child: SliderButton(
                  action: () {},
                  label: Text('MANUAL'),
                  icon: Center(child: Icon(Icons.control_point,color: Colors.lightGreen,),),
                ),
              ),
              Container(
                height: (MediaQuery.of(context).size.height)*0.3,
                width: (MediaQuery.of(context).size.width),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: (MediaQuery.of(context).size.height)*0.1,
                      width: (MediaQuery.of(context).size.width),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_up),
                        color: Colors.deepOrange,
                      ),
                    ),
                    Container(
                      height: (MediaQuery.of(context).size.height)*0.1,
                      width: (MediaQuery.of(context).size.width),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_left) ,
                            color: Colors.deepOrange,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_right) ,
                            color: Colors.deepOrange,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: (MediaQuery.of(context).size.height)*0.1,
                      width: (MediaQuery.of(context).size.width),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_down),
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: (MediaQuery.of(context).size.height)*0.3,
                width: (MediaQuery.of(context).size.width),
                child: Card(
                  color: Colors.blueGrey,
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
