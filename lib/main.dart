// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
      home: Material(child: Center(child: Text("Welcome to Flutter"),),),
    );
      
    
   
  }
}