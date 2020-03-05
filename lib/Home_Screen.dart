import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home_Screen_State();
  }
}

class Home_Screen_State extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(232, 170, 140, 2),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //lam 1 cai dau 1 cai cuoi
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 5.0),
              child: Text(
                'Nala',
                style: TextStyle(
                  //color: Color.fromRGBO(r, g, b, opacity),
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                ),
              ),
            ),
            GestureDetector(
              child: Icon(
                Icons.list,
                size: 45.0,
              ),
              onTap: () {
                print('Icon List');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('HOME SCREEN'),
            ],
          ),
        ),
      ),
    );
  }
}
