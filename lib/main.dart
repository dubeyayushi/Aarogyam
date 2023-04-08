import 'package:flutter/material.dart';
import 'package:my_project/views/api.dart';
import 'package:my_project/views/diabetes.dart';
import 'package:my_project/views/diseaselist.dart';
import 'package:my_project/views/doctor.dart';
import 'package:my_project/views/signingin.dart';
import 'package:my_project/views/stroke.dart';
import 'package:my_project/views/sample.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"आरोग्यम्",
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: doctor(),
      //Signingin(),
    );

}}
