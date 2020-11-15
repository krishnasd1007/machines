import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../machineList.dart';


class MachinesPage extends StatefulWidget {
  @override
  _MachinesPageState createState() => _MachinesPageState();
}

class _MachinesPageState extends State<MachinesPage> {
  var maxHeight;
  var maxWidth;
  var containerWidth;
  var screenMode;

  void setStates(context){
    setState(() {
      maxHeight= MediaQuery.of(context).size.height;
      maxWidth= MediaQuery.of(context).size.width;
      containerWidth = MediaQuery.of(context).size.width/2-40;
      screenMode = "portrait"; 
    });
    if(maxWidth>maxHeight){
      setState(() { 
        containerWidth = (maxWidth-100)/4; 
        screenMode = "landscape"; 
      });
    }
  }
  
  Widget appbar() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical:10),
      padding: const EdgeInsets.all(10),
      width: maxWidth-20,
      decoration: BoxDecoration(
        color: Colors.teal[600],
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text("MACHINES",
                style: TextStyle(
                  fontWeight:FontWeight.bold,
                  color:Colors.white,
                  fontSize: 15
                ),
              ),
              SizedBox(width:5),
              Icon(Icons.info,color: Colors.white,),
            ],
          ),
          Icon(Icons.reply,color: Colors.white,),
        ],
      ),
    );
  }


  Widget machineText(str,size,space){
    return Text(str,
      style: TextStyle(
        fontSize:size.toDouble(),
        color: Colors.white,
        letterSpacing: space.toDouble(),
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget machineWidget(machineObj){
    return Container(
      width: containerWidth,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.teal[600],
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children:[
          machineText(machineObj["name"],15,.3),          
          SizedBox(height:10),
          RaisedButton(
            color: Colors.greenAccent[400],
            child:machineText("GO",15,1),
            onPressed: (){},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          RaisedButton(
            color: Colors.green[700],
            child:machineText("details",15,1),
            onPressed: (){},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        ],
      ),
    );
  }

  Widget singleRow(rowChildren){
    return Row(
      children: rowChildren,
    );
  }

  List<Widget> createMachineLayout(){
    int elementsInRow = (screenMode == "portrait")? 2 : 4;
    int listLength = machineList.length;
    int noOfRows = (listLength/elementsInRow).ceil();
    int index = 0;
    List<Widget> machineLayout = new List(); 
    machineLayout.add(appbar());
    for(int i= 0 ; i < noOfRows ; i++){
      List<Widget> rowChildren = new List(); 
      for(int j=0;j<elementsInRow && index!=listLength;j++){
        rowChildren.add(machineWidget(machineList[index]));
        index++;
      }
      machineLayout.add(singleRow(rowChildren));
    }
    return machineLayout;
  } 


  Widget base(){
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child:Column(
        children:createMachineLayout(),
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    setStates(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(55, 55, 55, 1),
      body: SafeArea(
        child: base(),
      ),
    );
  }
}










// KRISHNA'S CODE

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';


// class MachinesPage extends StatefulWidget {
//   @override
//   _MachinesPageState createState() => _MachinesPageState();
// }

// class _MachinesPageState extends State<MachinesPage> {

//   var hl,hrp,wrp,hrl,wrl,ht,wt,hp,wp;

//   Widget button() {
//     return Material(
//       color: Colors.blueGrey[900],
//       child: IconButton(
//         icon: Icon(Icons.keyboard_arrow_left),
//         color: Colors.lightGreen,
//         splashColor: Colors.red,
//         padding: EdgeInsets.all(10),
//         onPressed: () {},
//       ),
//     );
//   }

//   Widget raisebutton(st,hr,wr,col) {
//     return Container(
//         height: hr,
//         width: wr,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(15.0)),
//         ),
//         child: RaisedButton(
//           onPressed: () {},
//           child: Text(st, style: TextStyle(
//             color: Colors.white70,
//             fontWeight: FontWeight.bold,
//           ),),
//           color: col,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(15.0)),
//           ),
//         ),
//     );
//   }

//   Widget machine(s,h,w,hr,wr) {
//     // return 
//     // Material(
//       // child: Card(
//         return Container(
//           padding: EdgeInsets.all(10.0),
//           margin: EdgeInsets.all(10.0),
//           height: h,
//           width: w,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(20.0)),
//             color: Colors.teal[800],
//             boxShadow: [BoxShadow(color: Colors.black,blurRadius: 5.2,),]
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Text(s, style: TextStyle(
//                 color: Colors.white70,
//                 fontWeight: FontWeight.bold,
//               ),),
//               raisebutton('GO',hr,wr,Colors.greenAccent[400]),
//               raisebutton('DETAILS',hr,wr,Colors.green[700]),
//             ],
//           ),
//         // ),
//       // ),
//     );
//   }

//   Widget row(m1,m2,h,hr,wr) {
//     return Material(
//       color: Colors.blueGrey[900],
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           machine(m1,h,wp,hr,wr),
//           machine(m2,h,wp,hr,wr),
//         ],
//       ),
//     );
//   }

//   Widget appbar(ha,wa) {
//     return Container(
//       child: Card(
//         color: Colors.teal[800],
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(20.0))
//         ),
//         child: Container(
//           height: ha,
//           width: wa,
//           child: Center(
//             child: Text('MACHINES', style: TextStyle(
//                 color: Colors.white70, fontWeight: FontWeight.bold,fontSize: ht*0.03)),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget portrait(h,ha,wa,hr,wr) {
//     return Material(
//       child: Container(
//         height: ht,
//         width: wt,
//         color: Colors.blueGrey[900],
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Padding(padding: EdgeInsets.all(10)),
//               button(),
//               appbar(ha, wa),
//               row('MACHINE 1', 'MACHINE 2', h,hr,wr),
//               row('MACHINE 3', 'MACHINE 4', h,hr,wr),
//               row('MACHINE 5', 'MACHINE 6', h,hr,wr),
//               row('MACHINE 7', 'MACHINE 8', h,hr,wr),
//             ],
//           ),
//         ),
//       )
//     );
//   }

//   Widget landscape() {
//     return Material(
//       child: portrait(hl,ht*0.2,wt*0.9,hrl,wrl),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//      ht = MediaQuery.of(context).size.height;
//      wt = MediaQuery.of(context).size.width;
//      hp = 0.2*ht;
//      wp = 0.4*wt;
//      hl = 0.4*ht;
//      hrp = 0.05*ht;
//      wrp = 0.25*wt;
//      hrl = 0.1*ht;
//      wrl = 0.25*wt;
//     return MaterialApp(
//       home: OrientationBuilder(
//         builder: (context,orientation) {
//           if (orientation == Orientation.portrait){
//             return portrait(hp,ht*0.1,wt*0.9,hrp,wrp);
//           }else{
//             return landscape();
//           }
//         },
//       ),
//     );
//   }
// }