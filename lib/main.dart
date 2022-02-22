// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pages/homepage.dart';
import 'package:myapp/pages/loginpage.dart';



void main() => runApp( const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.latoTextTheme(),
        ),
     // darkTheme: ThemeData(brightness: Brightness.dark),
     routes: {
       "/":(context) => LoginPage(),
       "/homepage": (context)=> HomePage()
          
           
          
     },
    );
      
    
   
  }
}