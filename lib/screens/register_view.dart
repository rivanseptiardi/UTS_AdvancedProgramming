import 'package:flutter/material.dart';
import 'package:lukman/constants.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = "/RegisterPage";

  const RegisterPage({Key? key}) : super(key: key);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            _iconRegistrasi(),
            _titleDescription(),
            _textField(),
            _buildButton(context),
          ],
        ),
      ),
    );
  }
}

Widget _iconRegistrasi() {
  return Image.asset(
    "assets/images/logoikmi.png",
    width: 150.0,
    height: 150.0,
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
        "Silahkan Lakukan Registrasi",
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
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
          hintText: "Nama Lengkap",
          hintStyle: TextStyle(color: Colors.white),
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
          icon: Icon(Icons.email_outlined),
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
          hintText: "e-mail",
          hintStyle: TextStyle(color: Colors.white),
        ),
        style: const TextStyle(color: Colors.black),
        autofocus: false,
      ),
      TextFormField(
        decoration: const InputDecoration(
          // jang icon
          icon: Icon(Icons.people),
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
          hintText: "Jenis Kelamin",
          hintStyle: TextStyle(color: Colors.white),
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
              width: 3.0,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Passwrod",
          hintStyle: TextStyle(color: ColorPalette.hintColor),
        ),
        style: const TextStyle(color: Colors.blue),
        obscureText: true,
        autofocus: false,
      ),
      TextFormField(
        decoration: const InputDecoration(
          // jang icon
          icon: Icon(Icons.lock_clock_rounded),
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underlineTextField,
              width: 3.0,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Confirmasi Passwrod",
          hintStyle: TextStyle(color: ColorPalette.hintColor),
        ),
        style: const TextStyle(color: Colors.blue),
        obscureText: true,
        autofocus: false,
      ),
    ],
  );
}

Widget _buildButton(BuildContext context) {
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
            'Registrasi',
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
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/");
        },
      )
    ],
  );
}
