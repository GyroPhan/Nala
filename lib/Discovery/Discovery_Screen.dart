import 'package:flutter/material.dart';

class Discovery_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Discovery_Screen_State();
  }
}

class Discovery_Screen_State extends State<Discovery_Screen> {
  String search = '';

  @override
  Widget build(BuildContext context) {
    final TextField _txtSearch = TextField(
      decoration: InputDecoration(
        prefixIcon: Container(
          width: 50,
          child: Icon(Icons.search),
        ),
        hintText: 'Search',
        contentPadding: EdgeInsets.all(10.0),
        //padding cua phan noi dung ben trong
        border: InputBorder.none, //bỏ border đi, border ben trong cua textfeild
      ),
      keyboardType: TextInputType.text,
      autocorrect: false, //ko hiện gợi ý nữa
      onChanged: (text) {
        setState(() {
          search = text;
        });
      },
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 170, 140, 2),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1.0, color: Colors.lime),
                  borderRadius: BorderRadius.all(Radius.circular(
                      10.0)), // bo tròn border với bán kính 4pixel
                ),
                child: _txtSearch,
              ),
              ///////////////////////////////////////////////////////////////////////////////////////////
              Row(
                children: <Widget>[
                  Container(

                    width: 200.0,
                    height: 250.0,
                    child: GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.all(25.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(
                              20.0)), // bo tròn border với bán kính 4pixel
                        ),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'icons/Discovery/D_Notebook.jpg',
                              width: 150.0,
                              height: 150.0,
                            ),
                            Text(
                              'Notebook',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 200.0,
                    height: 250.0,
                    child: GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.all(25.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),

                          borderRadius: BorderRadius.all(Radius.circular(
                              20.0)), // bo tròn border với bán kính 4pixel
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(20.0),
                              child: Image.asset(
                                'icons/Discovery/D_Pencil.jpg',
                                width: 100.0,
                                height: 100.0,
                              ),
                            ),
                            Text(
                              'Pen',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ///////////////////////////////////////////////////////////////////////////////////////////
              Row(
                children: <Widget>[
                  Container(
                    width: 200.0,
                    height: 250.0,
                    child: GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.all(25.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(
                              20.0)), // bo tròn border với bán kính 4pixel
                        ),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'icons/Discovery/D_Marker.jpg',
                              width: 150.0,
                              height: 150.0,
                            ),
                            Text(
                              'Marker',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 200.0,
                    height: 250.0,
                    child: GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.all(25.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),

                          borderRadius: BorderRadius.all(Radius.circular(
                              20.0)), // bo tròn border với bán kính 4pixel
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(20.0),
                              child: Image.asset(
                                'icons/Discovery/D_Sticker.jpg',
                                width: 100.0,
                                height: 100.0,
                              ),
                            ),
                            Text(
                              'Sticker',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ///////////////////////////////////////////////////////////////////////////////////////////
              Row(
                children: <Widget>[
                  Container(
                    width: 200.0,
                    height: 250.0,
                    child: GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.all(25.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(
                              20.0)), // bo tròn border với bán kính 4pixel
                        ),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'icons/Discovery/D_Combo.jpg',
                              width: 150.0,
                              height: 150.0,
                            ),
                            Text(
                              'Combo',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 200.0,
                    height: 250.0,
                    child: GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.all(25.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),

                          borderRadius: BorderRadius.all(Radius.circular(
                              20.0)), // bo tròn border với bán kính 4pixel
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(20.0),
                              child: Image.asset(
                                'icons/Discovery/D_Sticker.jpg',
                                width: 100.0,
                                height: 100.0,
                              ),
                            ),
                            Text(
                              'Favorite',
                              style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ///////////////////////////////////////////////////////////////////////////////////////////
            ],
          ),
        ),
      ),
    );
  }
}
