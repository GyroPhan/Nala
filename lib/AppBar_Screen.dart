import 'package:flutter/material.dart';

import 'Home/Home_Screen.dart';
import 'Login/Login_Screen.dart';
import 'Discovery/Discovery_Screen.dart';

class Appbar_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Appbar_Screen_State();
  }
}

class Appbar_Screen_State extends State<Appbar_Screen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Home_Screen(),
    Discovery_Screen(),
    Text(
      'Favorite',
    ),
    Login_Screen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(232, 170, 140, 2),
        title: Center(
          child: Text(
            'Nala',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Discovery'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('You'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(232, 170, 140, 2),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.pink,
        onTap: _onItemTapped,
      ),
    );
  }
}
