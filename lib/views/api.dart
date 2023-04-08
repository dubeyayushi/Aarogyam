import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'signingin.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
class myhomepage extends StatefulWidget {


  @override
  State<myhomepage> createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ML Prediction'),
      ),
      body:
      Column(children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.end,
          children:[ Text("आरोग्यम्", style: TextStyle(
            fontSize: 150,
            color: Colors.blue[800],
            fontFamily: 'alkatra',
          ),),]
        ),
        Row(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start
            ,
          children: [
            Text("स्वस्थस्य स्वास्थ्य रक्षणं",
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue[400],
              fontFamily: 'alkatra',
            ),),]
        ),
      ],),);
  }

}