import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {

  TextEditingController Mail = TextEditingController();
  TextEditingController Password = TextEditingController();
  Future<void> login() async{
    final response = await http.post(Uri.parse("http://185.131.49.115/login/login.php"),
        body:{
      "Mail":Mail.text,
      "Password":Password.text,
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors. red ,title: Text("Deneme"),titleTextStyle: TextStyle(fontFamily: 'Helvetica Neue',fontSize: 20)
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: Mail,
            decoration: InputDecoration(
              icon: Icon(Icons.mail_outline),
              hintText: 'Email',
            ),
          ),
          TextField(
            controller: Password,
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.vpn_key),
              hintText: 'Password',
            ),
          ),
          RaisedButton(
            color: Colors.red,
            child: Text('Login'),
            onPressed: (){
              login();
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

