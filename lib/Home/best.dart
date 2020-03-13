import 'package:flutter/material.dart';

class Best_List extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Best_List_State();
  }
}

class Best_List_State extends State<Best_List> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      height: 250.0,
      width: screenSize.width, // chieu ngang
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: screenSize.height,
              width: 250.0,
              padding: EdgeInsets.all(5.0),
              child: Image.asset('images/List/L_0${index}.jpg'),
            );
          }),
    );
  }
}
