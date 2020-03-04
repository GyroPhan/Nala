import 'package:flutter/material.dart';
import 'User.dart';

class Sign_up_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Sign_up_Screen_State();
  }
}

class Sign_up_Screen_State extends State<Sign_up_Screen> {
  final User newuser = User();

  @override
  Widget build(BuildContext context) {
    ///////////////////////////////////////////////////
    final TextField _txtNewUserName = TextField(
      decoration: InputDecoration(
        prefixIcon: Container(
          width: 50,
          child: Icon(Icons.contacts),
        ),
        hintText: 'New User Name',
        contentPadding: EdgeInsets.all(20.0),
        //padding cua phan noi dung ben trong
        border: InputBorder.none, //bỏ border đi, border ben trong cua textfeild
      ),
      keyboardType: TextInputType.text,
      autocorrect: false, //ko hiện gợi ý nữa
      onChanged: (text) {
        setState(() {
          this.newuser.userName = text;
        }); //nhập và lưu đối tượng
      },
    );
    final TextField _txtNewEmail = TextField(
      decoration: InputDecoration(
        prefixIcon: Container(
          width: 50,
          child: Icon(Icons.email),
        ),
        hintText: 'New Email',
        contentPadding: EdgeInsets.all(20.0),
        //padding cua phan noi dung ben trong
        border: InputBorder.none, //bỏ border đi, border ben trong cua textfeild
      ),
      keyboardType: TextInputType.text,
      autocorrect: false, //ko hiện gợi ý nữa
      onChanged: (text) {
        setState(() {
          this.newuser.email = text;
        }); //nhập và lưu đối tượng
      },
    );
    final TextField _txtNewPhone = TextField(
      decoration: InputDecoration(
        prefixIcon: Container(
          width: 50,
          child: Icon(Icons.phone),
        ),
        hintText: 'New Phone Number',
        contentPadding: EdgeInsets.all(20.0),
        //padding cua phan noi dung ben trong
        border: InputBorder.none, //bỏ border đi, border ben trong cua textfeild
      ),
      keyboardType: TextInputType.text,
      autocorrect: false, //ko hiện gợi ý nữa
      onChanged: (text) {
        setState(() {
          this.newuser.phone = text;
        }); //nhập và lưu đối tượng
      },
    );
    final TextField _txtNewPassword = TextField(
      decoration: InputDecoration(
        prefixIcon: Container(
          width: 50,
          child: Icon(Icons.info),
        ),
        hintText: 'New Password',
        contentPadding: EdgeInsets.all(20.0),
        //padding cua phan noi dung ben trong
        border: InputBorder.none, //bỏ border đi, border ben trong cua textfeild
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
      //ko hiện gợi ý nữa
      obscureText: true,
      onChanged: (text) {
        setState(() {
          this.newuser.password = text;
        }); //nhập và lưu đối tượng
      },
    );

    ///////////////////////////////////////////////////
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 170, 140, 2),
      body: Container(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
        constraints: BoxConstraints.expand(), //gian no max width max height
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/logo.png',
                height: 200.0,
                width: 200.0,
              ),
              Text(
                'SIGN UP',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0),
              ),
              ///////////////////////////////////////////////////////////////////////
              Container(
                margin: EdgeInsets.only(bottom: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1.0, color: Colors.lime),
                  borderRadius: BorderRadius.all(Radius.circular(
                      10.0)), // bo tròn border với bán kính 4pixel
                ),
                child: _txtNewUserName,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1.0, color: Colors.lime),
                  borderRadius: BorderRadius.all(Radius.circular(
                      10.0)), // bo tròn border với bán kính 4pixel
                ),
                child: _txtNewEmail,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1.0, color: Colors.lime),
                  borderRadius: BorderRadius.all(Radius.circular(
                      10.0)), // bo tròn border với bán kính 4pixel
                ),
                child: _txtNewPhone,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1.0, color: Colors.lime),
                  borderRadius: BorderRadius.all(Radius.circular(
                      10.0)), // bo tròn border với bán kính 4pixel
                ),
                child: _txtNewPassword,
              ),
              ////////////////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: SizedBox(
                  width: double.infinity, // de button tran day man hinh
                  height: 52,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    color: Color.fromRGBO(186, 85, 78, 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
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
