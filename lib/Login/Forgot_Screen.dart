import 'package:flutter/material.dart';

class Forgot_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Forgot_Screen_State();
  }
}

class Forgot_Screen_State extends State<Forgot_Screen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('FORGOT SCREEN'),
            RaisedButton(
              child: Text('BACK'),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}