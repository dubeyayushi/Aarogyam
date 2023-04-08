import 'package:flutter/material.dart';
import 'package:my_project/widgets/widgets.dart';
class kidneystone extends StatefulWidget {

  @override
  State<kidneystone> createState() => _kidneystoneState();
}
class _kidneystoneState extends State<kidneystone> {
  @override
  final _formkey2= GlobalKey<FormState>();
  late int gravity, ph, osmo, cond, urea, calc ;
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
                                Text("Kidney Stone",
                                  style:TextStyle(
                                      fontSize:40, fontWeight: FontWeight.bold,
                                      fontFamily: 'sourceserif',
                                      color: Colors.black),)]),
                          SizedBox(height: 20,),
                          Text("Q1) What is the specific gravity of urine?",
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
                                gravity=int.parse(val);
                              }),
                          SizedBox(height: 24,),
                          Text("Q2) What is the pH of urine ?",
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
                                ph=int.parse(val);
                              }),
                          SizedBox(height: 24,),
                          Text("Q3) What is the osmolarity of urine?",
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
                                osmo=int.parse(val);
                              }),
                          SizedBox(height: 24,),
                          Text("Q4) What is the conductivity of urine ?",
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
                                cond=int.parse(val);
                              }),
                          SizedBox(height: 24,),
                          Text("Q5) What is the urea concentration in millimoles per litre of urine ?",
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
                                urea=int.parse(val);
                              }),
                          SizedBox(height: 24,),
                          Text("Q6) What is the calcium concentration (CALC) in millimolesllitre in urine?",
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
                                calc =int.parse(val);
                              }),
                          SizedBox(height: 24,),
                          GestureDetector(
                            onTap: ()  {


                            },
                            child:
                            Container(
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
                        ],)

                  )
              )),
        )
    );

  }
}