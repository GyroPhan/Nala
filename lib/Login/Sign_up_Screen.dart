import 'package:flutter/material.dart';

class Sign_up_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Sign_up_Screen_State();
  }
}

class Sign_up_Screen_State extends State<Sign_up_Screen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('SIGN UP SCREEN'),
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