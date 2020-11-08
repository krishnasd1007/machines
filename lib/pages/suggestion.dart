import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionPage extends StatefulWidget {
  SuggestionPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SuggestionPageState createState() => _SuggestionPageState();
}

class _SuggestionPageState extends State<SuggestionPage> {

  Widget suggestionButton(str,color){
    return RaisedButton(
      padding: const EdgeInsets.all(5),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(str,
        style: TextStyle(
          color:Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
      color: color,
      onPressed: () {},  
    );
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(55, 55, 55, 1),
      body:SafeArea(
         child:Column(
          children:[
            Expanded(
              flex:1,
              child:Container(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color:Colors.grey
                ),
              ),
            ),
            Expanded(
              flex:1,
              child:Container(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color:Colors.grey
                ),
              ),
            ),
            Expanded(
              flex:2,
              child:Container(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: TextField(
                  
                  style: new TextStyle(
                      backgroundColor: Colors.grey,
                      fontSize: 16.0,
                      // height: 2.0,
                      color: Colors.black
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                  ),
                ),
              ),
            ),
            Expanded(
              flex:1,
              child:Container(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    suggestionButton("CANCEL", Colors.red),
                    suggestionButton("SUBMIT", Colors.green),
                  ],
                ),
              ),
            ),
          ]
        )
      ),
    );
  }
}