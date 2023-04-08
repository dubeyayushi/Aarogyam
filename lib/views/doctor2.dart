import 'package:flutter/material.dart';
import 'package:my_project/widgets/widgets.dart';

import 'doctor.dart';
class doctor2 extends StatefulWidget {
  @override
  State<doctor2> createState() => _doctor2State();
}

class _doctor2State extends State<doctor2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:appBar(context),
          backgroundColor: Colors.blue[800],
        ),
        body:
        Container(
            padding:EdgeInsets.symmetric(horizontal: 24),
            constraints: BoxConstraints.expand(),
            decoration:  BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background3.jpg'),
                  colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.modulate,),
                  fit: BoxFit.cover),),
            child:SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: 20,),
                Text("Lung Cancer Risk: High",
                  style:TextStyle(
                  fontSize:30,
                  fontFamily: 'sourceserif',
                  color: Colors.black),),
                Row(children: [

                      SizedBox(width: 100,),
                  GestureDetector(onTap:(){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> doctor()));
                  },
                      child: Container(

                          height: 30,
                          width: 200,child: Text("Nearby Hospital",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize:18, fontWeight: FontWeight.bold,
                        ),))),
                      Container(
                      padding: EdgeInsets.only(
                      bottom: 10, // Space between underline and text
                      ),
                      decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(
                      color: Colors.blue.shade800,
                      width: 2.0, // Underline thickness
                      ))
                      ),
                        child: Text("Best Doctors Nearby", style: TextStyle(
                                color: Colors.black,
                                fontSize:18, fontWeight: FontWeight.bold,
                                ),),),
                  SizedBox(width: 50,),

                          ],),
                    SizedBox(height: 20,),
                    Row(
                    children: [
                      CircleAvatar(
                      backgroundImage: NetworkImage('https://png.pngtree.com/png-clipart/20190120/ourlarge/pngtree-hospital-medical-doctors-cartoon-png-image_491837.jpg'),
                      radius: 75,
                      ),
                      SizedBox(width: 20,),
                      Container(
                      padding:EdgeInsets.symmetric(vertical: 18) ,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue
                      ),
                      height:150 ,
                      alignment: Alignment.center,
                      width: 400,
                      child:
                        Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("Dr. ABC",
                      style:TextStyle(
                      color: Colors.white,
                      fontSize:20,
                      ) ,),
                      Text("Batra Hospital ",
                      style:TextStyle(
                      color: Colors.white,
                      fontSize:20,
                      ) ,),]
                      ),
                      ),
                      SizedBox(width: 20,),
                      CircleAvatar(
                      backgroundImage: NetworkImage('https://previews.123rf.com/images/indomercy/indomercy1501/indomercy150100019/35500150-doctor-cartoon-illustration.jpg'),
                      radius: 75,
                      ),
                      SizedBox(width: 20,),
                      Container(
                      padding:EdgeInsets.symmetric(vertical: 18) ,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue
                      ),
                      height:150 ,
                      alignment: Alignment.center,
                      width: 400,
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("Dr. DEF",
                      style:TextStyle(
                      color: Colors.white,
                      fontSize:20,
                      ) ,),
                      Text("DEF Hospital",
                      style:TextStyle(
                      color: Colors.white,
                      fontSize:20,
                      ) ,),]
                      ),),
                    ],),
                    SizedBox(height: 30,),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://png.pngtree.com/png-clipart/20190120/ourlarge/pngtree-hospital-medical-doctors-cartoon-png-image_491837.jpg'),
                      radius: 75,
                    ),
                    SizedBox(width: 20,),
                    Container(
                      padding:EdgeInsets.symmetric(vertical: 18) ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue
                      ),
                      height:150 ,
                      alignment: Alignment.center,
                      width: 400,
                      child:
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dr. ABC",
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:20,
                              ) ,),
                            Text("Batra Hospital ",
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:20,
                              ) ,),]
                      ),
                    ),
                    SizedBox(width: 20,),
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://previews.123rf.com/images/indomercy/indomercy1501/indomercy150100019/35500150-doctor-cartoon-illustration.jpg'),
                      radius: 75,
                    ),
                    SizedBox(width: 20,),
                    Container(
                      padding:EdgeInsets.symmetric(vertical: 18) ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue
                      ),
                      height:150 ,
                      alignment: Alignment.center,
                      width: 400,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dr. DEF",
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:20,
                              ) ,),
                            Text("DEF Hospital",
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:20,
                              ) ,),]
                      ),),
                  ],),
                SizedBox(height: 30,),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://png.pngtree.com/png-clipart/20190120/ourlarge/pngtree-hospital-medical-doctors-cartoon-png-image_491837.jpg'),
                      radius: 75,
                    ),
                    SizedBox(width: 20,),
                    Container(
                      padding:EdgeInsets.symmetric(vertical: 18) ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue
                      ),
                      height:150 ,
                      alignment: Alignment.center,
                      width: 400,
                      child:
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dr. ABC",
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:20,
                              ) ,),
                            Text("Batra Hospital ",
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:20,
                              ) ,),]
                      ),
                    ),
                    SizedBox(width: 20,),
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://previews.123rf.com/images/indomercy/indomercy1501/indomercy150100019/35500150-doctor-cartoon-illustration.jpg'),
                      radius: 75,
                    ),
                    SizedBox(width: 20,),
                    Container(
                      padding:EdgeInsets.symmetric(vertical: 18) ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue
                      ),
                      height:150 ,
                      alignment: Alignment.center,
                      width: 400,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dr. DEF",
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:20,
                              ) ,),
                            Text("DEF Hospital",
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:20,
                              ) ,),]
                      ),),
                  ],),
                SizedBox(height: 30,),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://png.pngtree.com/png-clipart/20190120/ourlarge/pngtree-hospital-medical-doctors-cartoon-png-image_491837.jpg'),
                      radius: 75,
                    ),
                    SizedBox(width: 20,),
                    Container(
                      padding:EdgeInsets.symmetric(vertical: 18) ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue
                      ),
                      height:150 ,
                      alignment: Alignment.center,
                      width: 400,
                      child:
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dr. ABC",
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:20,
                              ) ,),
                            Text("Batra Hospital ",
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:20,
                              ) ,),]
                      ),
                    ),
                    SizedBox(width: 20,),
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://previews.123rf.com/images/indomercy/indomercy1501/indomercy150100019/35500150-doctor-cartoon-illustration.jpg'),
                      radius: 75,
                    ),
                    SizedBox(width: 20,),
                    Container(
                      padding:EdgeInsets.symmetric(vertical: 18) ,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue
                      ),
                      height:150 ,
                      alignment: Alignment.center,
                      width: 400,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dr. DEF",
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:20,
                              ) ,),
                            Text("DEF Hospital",
                              style:TextStyle(
                                color: Colors.white,
                                fontSize:20,
                              ) ,),]
                      ),),
                  ],),
                SizedBox(height: 30,),



    ],))));

  }}