import 'package:flutter/material.dart';
import 'package:my_project/widgets/widgets.dart';
class maternal extends StatefulWidget {

  @override
  State<maternal> createState() => _maternalState();
}
class _maternalState extends State<maternal> {
  @override
  final _formkey2= GlobalKey<FormState>();
  late int  Age, SystolicBP, DiastolicBP, BS, BodyTemp, HeartRate;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:appBar(context),
          backgroundColor: Colors.blue[800],
        ),
        body:
        Form(
          child:Container(
            padding:EdgeInsets.symmetric(horizontal: 24),
            constraints: BoxConstraints.expand(),
            decoration:  BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background3.jpg'),
                  colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.modulate,),
                  fit: BoxFit.cover),),
            child: Container(

                padding:EdgeInsets.symmetric(horizontal: 24),
                child:SingleChildScrollView(
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Maternal Healthcare",
                                style:TextStyle(
                                    fontSize:40, fontWeight: FontWeight.bold,
                                    fontFamily: 'sourceserif',
                                    color: Colors.black),)]),
                        SizedBox(height: 20,),
                        Text("Q1) Enter age of the patient:",
                          style:TextStyle(
                            fontSize:18,
                            fontWeight: FontWeight.bold,
                          ) ,),
                        TextFormField(
                            validator: (val){ return val!.isEmpty ? "Enter Value": null;},
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged:(val){
                              Age=int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q2) What is the upper value of Blood Pressure in mmHg ",
                          style:TextStyle(
                            fontSize:18,
                            fontWeight: FontWeight.bold,
                          ) ,),
                        TextFormField(
                            validator: (val){ return val!.isEmpty ? "Enter Value": null;},
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged:(val){
                              SystolicBP=int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q3) What is the lower value of Blood Pressure in mmHg?",
                          style:TextStyle(
                            fontSize:18,
                            fontWeight: FontWeight.bold,
                          ) ,),
                        TextFormField(
                            validator: (val){ return val!.isEmpty ? "Enter Value": null;},
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged:(val){
                              DiastolicBP=int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q4) What is the blood glucose levels is in terms of a molar concentration, mmol/L?",
                          style:TextStyle(
                            fontSize:18,
                            fontWeight: FontWeight.bold,
                          ) ,),
                        TextFormField(
                            validator: (val){ return val!.isEmpty ? "Enter Value": null;},
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged:(val){
                              BS=int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q5) What is the body temperature of the patient (in degree Fahrenheit)?",
                          style:TextStyle(
                            fontSize:18,
                            fontWeight: FontWeight.bold,
                          ) ,),
                        TextFormField(
                            validator: (val){ return val!.isEmpty ? "Enter Value": null;},
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged:(val){
                              BodyTemp=int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q6) What is the normal resting heart rate in beats per minute?",
                          style:TextStyle(
                            fontSize:18,
                            fontWeight: FontWeight.bold,
                          ) ,),
                        TextFormField(
                            validator: (val){ return val!.isEmpty ? "Enter Value": null;},
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged:(val){
                              HeartRate=int.parse(val);
                            }),

                        SizedBox(height: 24,),
                        GestureDetector(
                          onTap: () {

                          },



                          child:Container(
                            padding: EdgeInsets.symmetric(vertical: 18),
                            decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(30)
                            ),
                            height: 55,
                            alignment: Alignment.center,
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 48,
                            child: Text("Submit", style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),),
                          )
                          ,
                        ),
                        SizedBox(height: 20,),],
                    ))
            ),
          ),
        )
    );

  }
}