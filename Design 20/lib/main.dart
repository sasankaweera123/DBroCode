import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_glow/flutter_glow.dart';
//import 'package:project20/clipper.dart';

import 'appbr.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DBro Clock",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: TimeDBro(),
    );
  }
}

class TimeDBro extends StatefulWidget{
  @override
  _TimeDBroState createState()=> _TimeDBroState();

}

class _TimeDBroState extends State<TimeDBro>
{
  late String _timeString;

  @override
  void initState(){
    _timeString = "${DateTime.now().hour} : ${DateTime.now().minute} :${DateTime.now().second}";
    Timer.periodic(Duration(seconds:1), (Timer t)=>_getCurrentTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: appbarArt(),
      body:Center(
        child: Container(


            child: GlowText(_timeString, style: TextStyle(fontSize: 60,color: Colors.white),glowColor: Colors.white,blurRadius: 25,)),
      ),
    );
  }

  void _getCurrentTime()  {
    setState(() {
      _timeString = "${DateTime.now().hour} : ${DateTime.now().minute} :${DateTime.now().second}";
    });
  }
}