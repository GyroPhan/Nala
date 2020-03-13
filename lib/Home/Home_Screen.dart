import 'package:flutter/material.dart';
import 'best.dart';

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
    final screenSize = MediaQuery.of(context).size;
    // lấy saize màn hình đang xài

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 20.0,
              left: 15.0,
            ),
            alignment: AlignmentDirectional.centerStart,
            //cho chu chay ve cuoi
            child: Text(
              'Best Seller:',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
              ),
            ),
          ),
          Best_List(),
          Container(
            padding: EdgeInsets.only(
              top: 20.0,
              left: 15.0,
            ),
            alignment: AlignmentDirectional.centerStart,
            //cho chu chay ve cuoi
            child: Text(
              'Most favorite NoteBook:',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
