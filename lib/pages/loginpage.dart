// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool chanegebut=false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child:SingleChildScrollView( child: Column(children: [
        Image.asset("assets/image/loginimage.png",fit: BoxFit.cover,),
        SizedBox(
          height: 20.0,
        ),
        Text("Welcome $name",style: TextStyle(
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
          obscureText: true,
          decoration: InputDecoration(
            
            hintText: "Enter Username",
            labelText: "Username",
          ),
          onChanged: (value)
                     {
                       name=value;
                       setState(() {});
                     },
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
        SizedBox(
          height: 20.0,
        ),
        InkWell(
       
          onTap:() async {
            setState(() {
              chanegebut=true;
            });
       await Future.delayed(Duration(seconds: 1));
           Navigator.pushNamed(context, "/homepage");
            } ,
         
          child: AnimatedContainer(
             duration: Duration(seconds: 1), 
            height: 40,
            width: chanegebut? 50 : 150,
            
            alignment: Alignment.center,
            child: chanegebut ?Icon(Icons.done,
            color: Colors.white,)  :
            Text("Login",style: TextStyle(
              
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            
            ),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.deepPurple,),
            
          ),
        )
       /* ElevatedButton(
        onPressed: (){
         
          print("hello");
        },
         child: Text("Login"),
         style: TextButton.styleFrom(), 

         )*/
                ],

          )
          ),
    );
  }
}