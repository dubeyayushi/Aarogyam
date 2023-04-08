import 'package:flutter/material.dart';
import 'package:my_project/widgets/widgets.dart';
class diabetes extends StatefulWidget {
  @override
  State<diabetes> createState() => _diabetesState();
}

class _diabetesState extends State<diabetes> {
  final _formkey= GlobalKey<FormState>();
  late int pregnancies,glucose,bp,thickness,insulin,bmi,pedigree,age;
  @override
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
                                Text("Diabetes",
                                  style:TextStyle(
                                      fontSize:40, fontWeight: FontWeight.bold,
                                      fontFamily: 'sourceserif',
                                      color: Colors.black),)]),
                          SizedBox(height: 20,),
                          Text("Q1) Enter number of Pregnancies:",
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
                                pregnancies=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q2) Enter glucose level:",
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
                                glucose=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q3) Enter blood pressure:",
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
                                bp=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q4) Enter skin thickness:",
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
                                thickness=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q5) Enter insulin level:",
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
                                insulin=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q6) Enter BMI value:",
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
                                bmi=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q7) Enter diabetes pedigree function:",
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
                                pedigree=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q8) Enter age:",
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
                                age=int.parse(val);
                              }),
                          SizedBox(height: 24,),
                          GestureDetector(
                            onTap: () {

                            }
                            ,
                            child: Container(
                              padding:EdgeInsets.symmetric(vertical: 18) ,
                              decoration: BoxDecoration(
                                  color:Colors.blue[800],
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              height:55 ,
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width-48,
                              child: Text("Submit",style:TextStyle(
                                color: Colors.white,
                                fontSize:15,
                              ) ,),
                            ),
                          ),
                          SizedBox(height: 20,),

                        ],

                      )
                  )),
            )
        )
    );
  }
}