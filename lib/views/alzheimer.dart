import 'package:flutter/material.dart';
import 'package:my_project/widgets/widgets.dart';
class alzheimer extends StatefulWidget {

  @override
  State<alzheimer> createState() => _alzheimerState();
}
class _alzheimerState extends State<alzheimer> {
  @override
  final _formkey2 = GlobalKey<FormState>();
  late int gender, Age, EDUC, SES, MMSE, CDR, eTIV, nWBV, ASF;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: appBar(context),
          backgroundColor: Colors.blue[800],
        ),
        body:
        Form(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background3.jpg'),
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.6), BlendMode.modulate,),
                  fit: BoxFit.cover),),
            child: Container(

                padding: EdgeInsets.symmetric(horizontal: 24),
                child: SingleChildScrollView(
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Alzheimer's",
                                style:TextStyle(
                                    fontSize:40, fontWeight: FontWeight.bold,
                                    fontFamily: 'sourceserif',
                                    color: Colors.black),)]),
                        SizedBox(height: 20,),
                        Text("Q1) Enter gender:",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        TextFormField(
                            validator: (val) {
                              return val!.isEmpty ? "Enter Value" : null;
                            },
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged: (val) {
                              gender = int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q2) Enter age:",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        TextFormField(
                            validator: (val) {
                              return val!.isEmpty ? "Enter Value" : null;
                            },
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged: (val) {
                              Age = int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text(
                          "Q3) What is the number of years of education completed by the individual?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        TextFormField(
                            validator: (val) {
                              return val!.isEmpty ? "Enter Value" : null;
                            },
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged: (val) {
                              EDUC = int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q4) What is the socio-economic status?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        TextFormField(
                            validator: (val) {
                              return val!.isEmpty ? "Enter Value" : null;
                            },
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged: (val) {
                              SES = int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text(
                          "Q5) What is the mini mental state examination score?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        TextFormField(
                            validator: (val) {
                              return val!.isEmpty ? "Enter Value" : null;
                            },
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged: (val) {
                              MMSE = int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q6) What is the clinical dementia rating?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        TextFormField(
                            validator: (val) {
                              return val!.isEmpty ? "Enter Value" : null;
                            },
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged: (val) {
                              CDR = int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text(
                          "Q7) What is their estimated total intracranial volume?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        TextFormField(
                            validator: (val) {
                              return val!.isEmpty ? "Enter Value" : null;
                            },
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged: (val) {
                              eTIV = int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q8) Normalize whole brain volume?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        TextFormField(
                            validator: (val) {
                              return val!.isEmpty ? "Enter Value" : null;
                            },
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged: (val) {
                              nWBV = int.parse(val);
                            }),
                        SizedBox(height: 24,),
                        SizedBox(height: 20,),
                        Text("Q9) What is their atlas scaling factor?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        TextFormField(
                            validator: (val) {
                              return val!.isEmpty ? "Enter Value" : null;
                            },
                            decoration: InputDecoration(
                                hintText: "Enter Value"
                            ),
                            onChanged: (val) {
                              ASF = int.parse(val);
                            }),
                        SizedBox(height: 24,),

                        GestureDetector(
                          onTap: () {

                          },


                          child: Container(
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
                        SizedBox(height: 20,),
                      ],
                    ))
            ),
          ),
        )
    );
  }
}