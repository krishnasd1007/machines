import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './pages/directory.dart';
void main() {
  runApp(AppBase());
}

class AppBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dr Moovy',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),                     // UI [], CODE [], LOGIC []  
        '/splash': (context) => SplashPage(),                   // UI [], CODE [], LOGIC []
        '/status': (context) => StatusPage(),                   // UI [], CODE [], LOGIC []
        '/menu': (context) => MenuPage(),                       // UI [], CODE [], LOGIC []
        '/suggestion': (context) => SuggestionPage(),           // UI [], CODE [], LOGIC []
        '/feedback': (context) => FeedbackPage(),               // UI [], CODE [], LOGIC []
        '/machines': (context) => MachinesPage(),               // UI [], CODE [], LOGIC []
        '/machinedetails': (context) => MachineDetailsPage(),   // UI [], CODE [], LOGIC []
        '/info': (context) => InfoPage(),                       // UI [], CODE [], LOGIC []
        '/team': (context) => TeamPage(),                       // UI [], CODE [], LOGIC []
        '/member': (context) => MemberPage(),                   // UI [], CODE [], LOGIC []
        '/control': (context) => ControlPage(),                 // UI [], CODE [], LOGIC []
      },
    );
  }
}