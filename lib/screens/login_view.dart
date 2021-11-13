// ignore: avoid_web_libraries_in_flutter

// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:lukman/constants.dart';
import 'package:lukman/screens/register_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconLogin(),
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _iconLogin() {
  return Image.asset(
    "assets/images/logoikmi.png",
    height: 150.0,
    width: 150.0,
  );
}

Widget _titleDescription() {
  return Column(
    // ignore: prefer_const_literals_to_create_immutables
    children: <Widget>[
      const Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      const Text(
        "UKM IKATAN KOMUNIKASI MAHASISWA ISLAM (IKMI) POLITEKNIK TEDC BANDUNG",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
        textAlign: TextAlign.center,
      ),
      const Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      const Text(
        "Masukan Username & Password ",
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget _textField() {
  return Column(
    children: <Widget>[
      const Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          // jang icon
          icon: Icon(Icons.person),
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underlineTextField,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Username",
          hintStyle: TextStyle(color: ColorPalette.hintColor),
        ),
        style: const TextStyle(color: Colors.black),
        autofocus: false,
      ),
      const Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          // jang icon
          icon: Icon(Icons.lock),
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underlineTextField,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Password",
          hintStyle: TextStyle(color: ColorPalette.hintColor),
        ),
        style: const TextStyle(color: Colors.blue),
        obscureText: true,
        autofocus: false,
      ),
    ],
  );
}

// ignore: avoid_types_as_parameter_names, non_constant_identifier_names
Widget _buildButton(BuildContext) {
  return Column(
    children: <Widget>[
      const Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      InkWell(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: const Text(
            'Login',
            style: TextStyle(color: ColorPalette.primaryColor),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      const Text(
        'or',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        ),
      ),
      // ignore: deprecated_member_use
      FlatButton(
        child: const Text(
          'Register',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(
              BuildContext,
              MaterialPageRoute(
                builder: (context) => const RegisterPage(),
              ));
        },
      ),
    ],
  );
}
