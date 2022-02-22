// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
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
        Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32.0),
        child: Column(
          children: [TextFormField(
         
          decoration: InputDecoration(
            
            hintText: "Enter Username",
            labelText: "Username",
          ),
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Enter Password",
            labelText: "Password",
          ),
        ),
        ],
        ),
        ),
        
        ElevatedButton(
        onPressed: (){
          
          print("hello");
        },
         child: Text("Login"),
         style: TextButton.styleFrom(), 
         )
                ],

          )
          );
  }
}