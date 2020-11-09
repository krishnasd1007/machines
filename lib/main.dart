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
      initialRoute: '/member',
      routes: {
        '/login': (context) => LoginPage(),
        '/splash': (context) => SplashPage(),
        // '/status': (context) => StatusPage(),
        '/menu': (context) => MenuPage(),
        '/suggestion': (context) => SuggestionPage(),
        '/feedback': (context) => FeedbackPage(),
        '/machines': (context) => MachinesPage(),
        '/machinedetails': (context) => MachineDetailsPage(),
        '/info': (context) => InfoPage(),
        '/team': (context) => TeamPage(),
        '/member': (context) => MemberPage(),
        // '/control': (context) => ControlPage(),
      },
    );
  }
}