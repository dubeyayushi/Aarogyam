import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_project/views/alzheimer.dart';
import 'package:my_project/views/maternal.dart';
import 'package:my_project/views/stroke.dart';
import 'package:my_project/widgets/widgets.dart';
import'diabetes.dart';
import 'lungcancer.dart';
import 'kidneystone.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: appBar2(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,),
        body: Container(

          padding:EdgeInsets.symmetric(horizontal: 24),
          child:
            SingleChildScrollView(
              child: Column(
              children: [
                SizedBox(height: 30,),
                Row(
                    children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context)=> diabetes()));
                        },
                        child: Container(
                            padding:EdgeInsets.symmetric(vertical: 18) ,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                               image: DecorationImage(
                                image: AssetImage(
                                    'assets/pancrease3.jpeg'),
                                fit: BoxFit.fill,
                            ),),
                            height:150 ,
                          alignment: Alignment.center,
                          width: 600,
                          child: Text("Diabetes",style:TextStyle(
                          color: Colors.white,
                          fontSize:50,
                          fontWeight: FontWeight.bold,
                          ) ,),
                          ),
                          ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context)=> stroke()));
                      },
                      child: Container(

                        padding:EdgeInsets.symmetric(vertical: 18) ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/stroke2.jpg'),
                            fit: BoxFit.fill,
                          ),),
                        height:150 ,
                        alignment: Alignment.center,
                        width: 600,
                        child: Text("Stroke",style:TextStyle(
                          color: Colors.white,
                          fontSize:50,
                          fontWeight: FontWeight.bold,
                        ) ,),
                      ),
                    ),
                ]),
                SizedBox(height: 30,),
                Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context)=> kidneystone()));
                        },
                        child: Container(
                          padding:EdgeInsets.symmetric(vertical: 18) ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/kidney3.jpg'),
                              fit: BoxFit.fill,
                            ),),
                          height:150 ,
                          alignment: Alignment.center,
                          width: 600,
                          child: Text("Kidney Stone",style:TextStyle(
                            color: Colors.white,
                            fontSize:50,
                            fontWeight: FontWeight.bold,
                          ) ,),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context)=> lungcancer()));
                        },
                        child: Container(
                          padding:EdgeInsets.symmetric(vertical: 18) ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/lung.jpg'),
                              fit: BoxFit.fill,
                            ),),
                          height:150 ,
                          alignment: Alignment.center,
                          width: 600,
                          child: Text("Lung Cancer",style:TextStyle(
                            color: Colors.white,
                            fontSize:50,
                            fontWeight: FontWeight.bold,
                          ) ,),
                        ),
                      ),
                    ]),
                SizedBox(height: 30,),
                Row(

                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context)=> maternal()));
                        },
                        child: Container(
                          padding:EdgeInsets.symmetric(vertical: 18) ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/ovary.jpg'),
                              fit: BoxFit.fill,
                            ),),
                          height:150 ,
                          alignment: Alignment.center,
                          width: 600,
                          child: Text("Maternal Healthcare",style:TextStyle(
                            color: Colors.white,
                            fontSize:50,
                            fontWeight: FontWeight.bold,
                          ) ,),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context)=> alzheimer()));
                        },
                        child: Container(

                          padding:EdgeInsets.symmetric(vertical: 18) ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/brain.jpg'),
                              fit: BoxFit.fill,
                            ),),
                          height:150 ,
                          alignment: Alignment.center,
                          width: 600,
                          child: Text("Alzheimer's",style:TextStyle(
                            color: Colors.white,
                            fontSize:50,
                            fontWeight: FontWeight.bold,
                          ) ,),
                        ),
                      ),
                    ]),
                SizedBox(height: 30,),

              ],

                      ),
                ),
            ),
    )

    ;



}
}