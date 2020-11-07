import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  var screenHeight;
  var screenWidth;

  Widget casing(elements){
    return Container(
      margin: const EdgeInsets.symmetric(vertical:5), 
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:elements,
      ),
      decoration: BoxDecoration(
        color: Colors.blueGrey[700],
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }

  Widget txtElement(str){
    return Text(str,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget instaButton(str,pressHandler){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: RaisedButton(
        padding: const EdgeInsets.symmetric(vertical:20),
        onPressed: pressHandler,
        child:txtElement(str),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      )
    );
  }
  
  Widget menuButton(str,btncolor,pressHandler){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: RaisedButton(
        padding: const EdgeInsets.symmetric(vertical:20),
        color: btncolor,
        onPressed: pressHandler,
        child:txtElement(str),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      )
    );
  }

  Widget vSpace(k){
    return SizedBox(height:k*1.0);
  }

  Widget base() {
    List<Widget> robotElements = [vSpace(5),txtElement('ROBOT STATUS'),vSpace(5),menuButton("available", Colors.green,(){})];
    List<Widget> machineSingleton = [menuButton("MACHINES", Colors.brown[400],(){})];
    List<Widget> controllerSingleton = [menuButton("CONTROLLER", Colors.orange[700],(){})];
    List<Widget> optionElements = [
      menuButton("SUGGESTIONS", Colors.blue[700],(){}),
      menuButton("ABOUT US", Colors.grey[400],(){}),
      instaButton("@fablab_faby",(){}),
      menuButton("faby.tech", Colors.green[700],(){}),
      menuButton("LOGOUT", Colors.deepOrangeAccent[700],(){})
    ];
    return Material(
      child: Container(
        height: screenHeight,
        width: screenWidth,
        color: Colors.blueGrey[900],
        child: ListView(
          padding: const EdgeInsets.all(30),
          children: <Widget>[
            vSpace(20),
            casing(robotElements),
            vSpace(20),
            casing(machineSingleton),
            casing(controllerSingleton),
            vSpace(20),
            casing(optionElements),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      screenHeight = MediaQuery.of(context).size.height;
      screenWidth = MediaQuery.of(context).size.width;
    });
    return base();
  }

}