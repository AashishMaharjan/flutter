import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: prefer_const_constructors
class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Image.asset("assets/image/loginimage.png",fit: BoxFit.cover,),
        SizedBox(
          height: 20.0,
        ),
        Text("Welcome",style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          
          ),
          
          ),
          SizedBox(
          height: 20.0,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter Username",
            labelText: "Username",
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter Password",
            labelText: "Password",
          ),
        )],

          )
          );
  }
}