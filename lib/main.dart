import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
//import 'exp.dart';
//import 'team.dart';
//import 'login.dart';
//import 'menu.dart';
import 'battery.dart';

void main() {
  runApp(Battery());
=======
import './pages/directory.dart';
void main() {
  runApp(AppBase());
>>>>>>> 571de42584c1a641d4158c6ad72497a5473eeed5
}

class AppBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dr Moovy',
      initialRoute: '/machines',
      routes: {
        '/login': (context) => LoginPage(),                     // UI [], CODE [], LOGIC []  
        '/splash': (context) => SplashPage(),                   // UI [], CODE [], LOGIC []
        '/status': (context) => StatusPage(),                   // UI [], CODE [], LOGIC [] left
        '/menu': (context) => MenuPage(),                       // UI [], CODE [], LOGIC []
        '/suggestion': (context) => SuggestionPage(),           // UI [], CODE [], LOGIC []
        '/feedback': (context) => FeedbackPage(),               // UI [], CODE [], LOGIC []
        '/machines': (context) => MachinesPage(),               // UI [], CODE [], LOGIC []
        '/machinedetails': (context) => MachineDetailsPage(),   // UI [], CODE [], LOGIC [] 
        '/info': (context) => InfoPage(),                       // UI [], CODE [], LOGIC []
        '/team': (context) => TeamPage(),                       // UI [], CODE [], LOGIC [] half
        '/member': (context) => MemberPage(),                   // UI [], CODE [], LOGIC [] 
        '/control': (context) => ControlPage(),                 // UI [], CODE [], LOGIC [] left
      },
    );
  }
}