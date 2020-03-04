import 'package:flutter/material.dart';
import 'package:nala/Login/Forgot_Screen.dart';
import 'package:nala/Login/Sign_up_Screen.dart';

import 'User.dart';
import '../Home_Screen.dart';
import 'Sign_up_Screen.dart';
import 'Forgot_Screen.dart';

class Login_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Login_Screen_State();
  }
}

class Login_Screen_State extends State<Login_Screen> {
  final User user = User();

  @override
  Widget build(BuildContext context) {
    ///////////////////////////////////////////////////////////////////////////
    final TextField _txtUserName = TextField(
      decoration: InputDecoration(
        prefixIcon: Container(
          width: 50,
          child: Icon(Icons.contacts),
        ),
        hintText: 'User Name',
        contentPadding: EdgeInsets.all(10.0),
        //padding cua phan noi dung ben trong
        border: InputBorder.none, //bỏ border đi, border ben trong cua textfeild
      ),
      keyboardType: TextInputType.text,
      autocorrect: false, //ko hiện gợi ý nữa
      onChanged: (text) {
        setState(() {
          this.user.userName = text;
        }); //nhập và lưu đối tượng
      },
    );

    final TextField _txtPassWord = TextField(
      decoration: InputDecoration(
        prefixIcon: Container(
          width: 50,
          child: Icon(Icons.info),
        ),
        hintText: 'Password',
        contentPadding: EdgeInsets.all(10.0),
        //padding cua phan noi dung ben trong
        border: InputBorder.none, //bỏ border đi, border ben trong cua textfeild
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
      //ko hiện gợi ý nữa
      obscureText: true,
      //hiện ****
      onChanged: (text) {
        setState(() {
          this.user.password = text;
        });
      },
    );
    ///////////////////////////////////////////////////////////////////////////

    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 170, 140, 2),
      body: Container(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
        constraints: BoxConstraints.expand(), //gian no max width max height
        child: SingleChildScrollView(
          //du scroll
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Image.asset(
                'images/logo.png',
                height: 270.0,
                width: 270.0,
              ),
              Text(
                'LOGIN',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 25.0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1.0, color: Colors.lime),
                  borderRadius: BorderRadius.all(Radius.circular(
                      10.0)), // bo tròn border với bán kính 4pixel
                ),
                child: _txtUserName,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1.0, color: Colors.lime),
                  borderRadius: BorderRadius.all(Radius.circular(
                      10.0)), // bo tròn border với bán kính 4pixel
                ),
                child: _txtPassWord,
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10.0,
                ),
                constraints: BoxConstraints.loose(Size(double.infinity, 30)),
                //??
                alignment: AlignmentDirectional.centerEnd,
                //cho chu chay ve cuoi
                child: GestureDetector(
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(fontSize: 17, color: Color(0xff606470)),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Forgot_Screen()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: SizedBox(
                  width: double.infinity, // de button tran day man hinh
                  height: 52,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home_Screen()));
                    },
                    child: Text(
                      "LOG IN",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    color: Color.fromRGBO(186, 85, 78, 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'New User?  ',
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 17.0),
                      ),
                      GestureDetector(
                        child: Text(
                          'Sign Up for new account',
                          style: TextStyle(
                              color: Color.fromRGBO(214, 106, 99, 2),
                              fontSize: 17.0),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sign_up_Screen()));
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
