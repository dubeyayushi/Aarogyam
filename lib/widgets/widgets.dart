import 'package:flutter/material.dart';
import 'package:my_project/views/diseaselist.dart';
import 'package:my_project/views/signingin.dart';
Widget appBar(BuildContext context) {
  return Container(
    color: Colors.blue[800],
      child: Row(
          children: [
            IconButton(
              iconSize: 30,
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => Home()));
              },),
            Text("आरोग्यम्",
                style: TextStyle(
                    fontSize: 22, fontFamily: 'alkatra',
                    color: Colors.white)),
            Spacer(),
            IconButton(icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => Signingin()));},
              iconSize: 30,
              color:Colors.white ,)

          ])
  );
}

  Widget appBar2(BuildContext context) {
    return Container(
        child: Row(
            children: [
              Text("आरोग्यम्",
                  style: TextStyle(
                      fontSize: 22, fontFamily: 'alkatra',
                      color: Colors.blue[800])),
              Spacer(),
              IconButton(icon: const Icon(Icons.logout),
                onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => Signingin()));},
                iconSize: 30,
                color:Colors.blue[800] ,)

            ],)
    );
  }
