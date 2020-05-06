import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plajob/screens/register.dart';
import 'package:plajob/utility/my_style.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// Field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: <Color>[Colors.white, MyStyle().primaryColor],
              radius: 1.3,
              center: Alignment(0, -0.5),
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  showLogo(),
                  MyStyle().mySizeBox(),
                  showAppName(),
                  MyStyle().mySizeBox(),
                  userForm(),
                  MyStyle().mySizeBox(),
                  passForm(),
                  MyStyle().mySizeBox(),
                  loginButton(),
                  registerButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  FlatButton registerButton() => FlatButton(
        onPressed: () {
          print('You Click Register');

          MaterialPageRoute materialPageRoute =
              MaterialPageRoute(builder: (value) {
            return Register();
          });
          Navigator.push(context, materialPageRoute);
        },
        child: Text(
          'New Register',
          style: TextStyle(color: Colors.blue),
        ),
      );

  Widget loginButton() => Container(
        width: 250.0,
        child: RaisedButton(
          color: MyStyle().darkColor,
          onPressed: () {},
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  Container passForm() {
    return Container(
      width: 250.0,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password :',
          hintText: 'Password',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container userForm() {
    return Container(
      width: 250.0,
      child: TextField(
        decoration: InputDecoration(
            labelStyle: TextStyle(color: MyStyle().darkColor),
            labelText: 'User Name :',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().darkColor)),
            focusedBorder: OutlineInputBorder()),
      ),
    );
  }

  Text showAppName() => Text(
        'PLA FIND JOBS',
        style: GoogleFonts.athiti(
            textStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: MyStyle().darkColor,
        )),
      );

  Container showLogo() {
    return Container(
      width: 120.0,
      child: Image.asset('images/logo.png'),
    );
  }
}
