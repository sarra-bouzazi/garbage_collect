import 'package:flutter/material.dart';
import 'index.dart';
import 'signup.dart';
import 'signin.dart';
import 'ldechets.dart';
import 'adechets.dart';
import 'listp.dart';
import 'buttons.dart';

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiniProjet',
      initialRoute: '/',
      routes: {
        '/': (context) => index(),
        '/adechets': (context) => adechets(),
        '/ldechets': (context) => ldechets(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/listp': (context) => listepersonne(),
        '/buttons': (context) => buttons(),
      },
    );
  }
}
