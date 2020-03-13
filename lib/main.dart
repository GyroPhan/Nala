import 'package:flutter/material.dart';
import 'package:nala/AppBar_Screen.dart';

import 'AppBar_Screen.dart';
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
      home: Appbar_Screen(),
    );
  }
}
