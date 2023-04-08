import 'package:flutter/material.dart';
import 'package:my_project/widgets/widgets.dart';

import 'doctor2.dart';
class doctor extends StatefulWidget {
  @override
  State<doctor> createState() => _doctorState();
}

class _doctorState extends State<doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:appBar(context),
        backgroundColor: Colors.blue[800],),
        body:
        Container(
            padding:EdgeInsets.symmetric(horizontal: 24),
            constraints: BoxConstraints.expand(),
            decoration:  BoxDecoration(
            image: DecorationImage(
            image: AssetImage('assets/background3.jpg'),
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.modulate,),
            fit: BoxFit.cover),),
          child:
          SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 20,),
              Text("Lung Cancer Risk: High",
              style:TextStyle(
                  fontSize:30,
                  fontFamily: 'sourceserif',
                  color: Colors.black),),
              Row(children: [

                SizedBox(width: 100,),
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
                  child: Text(
                    "Nearby Hospital",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize:18, fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 50,),
                GestureDetector(onTap:(){
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context)=> doctor2()));
                },
                    child:
                    Container(

                        height: 30,
                        width: 200,child: Text("Best Doctors Nearby",
                        style: TextStyle(
                        color: Colors.black,
                        fontSize:18, fontWeight: FontWeight.bold,
                    ),)))
              ],),
              SizedBox(height: 20,),
             Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://www.shutterstock.com/image-vector/patient-care-concept-vector-doctor-260nw-1506818630.jpg'),
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
                       Text("Batra Hospital ",
                        style:TextStyle(
                        color: Colors.white,
                        fontSize:20,
                      ) ,),
                   Text("Mehrauli Badarpur Road, Delhi",
                   style:TextStyle(
                   color: Colors.white,
                     fontSize:20,
                   ) ,),]
                    ),
                  ),
                SizedBox(width: 20,),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvLawNULhGmRAhi3EfaRDZQflTty1mlfxDRg&usqp=CAU'),
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
                      Text("Fortis Hospital",
                        style:TextStyle(
                          color: Colors.white,
                          fontSize:20,
                        ) ,),
                      Text("Vasant Kunj, Delhi",
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
                    backgroundImage: NetworkImage('https://www.shutterstock.com/image-vector/patient-care-concept-vector-doctor-260nw-1506818630.jpg'),
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
                          Text("ABC Hospital",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize:20,
                            ) ,),
                          Text("Sheikh Sarai, Delhi",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize:20,
                            ) ,),]
                    ),),
                  SizedBox(width: 20,),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvLawNULhGmRAhi3EfaRDZQflTty1mlfxDRg&usqp=CAU'),
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
                          Text("DEF Hospital",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize:20,
                            ) ,),
                          Text("Sheikh Sarai, Delhi",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize:20,
                            ) ,),]
                    ),),
                ],),
              SizedBox(height: 20,),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://www.shutterstock.com/image-vector/patient-care-concept-vector-doctor-260nw-1506818630.jpg'),
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
                          Text("Batra Hospital ",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize:20,
                            ) ,),
                          Text("Mehrauli Badarpur Road, Delhi",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize:20,
                            ) ,),]
                    ),
                  ),
                  SizedBox(width: 20,),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvLawNULhGmRAhi3EfaRDZQflTty1mlfxDRg&usqp=CAU'),
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
                          Text("Fortis Hospital",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize:20,
                            ) ,),
                          Text("Vasant Kunj, Delhi",
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
                    backgroundImage: NetworkImage('https://www.shutterstock.com/image-vector/patient-care-concept-vector-doctor-260nw-1506818630.jpg'),
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
                          Text("ABC Hospital",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize:20,
                            ) ,),
                          Text("Sheikh Sarai, Delhi",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize:20,
                            ) ,),]
                    ),),
                  SizedBox(width: 20,),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvLawNULhGmRAhi3EfaRDZQflTty1mlfxDRg&usqp=CAU'),
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
                          Text("DEF Hospital",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize:20,
                            ) ,),
                          Text("Sheikh Sarai, Delhi",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize:20,
                            ) ,),]
                    ),),
                ],),


                ],),

                                )
            ,),);
  }
}
