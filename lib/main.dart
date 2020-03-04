import 'package:flutter/material.dart';

import 'Home_Screen.dart';
import 'Login/Login_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Login_Screen() ,
    );
  }
}

