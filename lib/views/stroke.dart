import 'package:flutter/material.dart';
import 'package:my_project/widgets/widgets.dart';
class stroke extends StatefulWidget {

  @override
  State<stroke> createState() => _strokeState();
}
class _strokeState extends State<stroke> {
  @override
  final _formkey2= GlobalKey<FormState>();
  late int gender,hypertension,heart_disease,ever_married,work_type,Residence_type,glucose,bmi,smoking_status,age;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:appBar(context),
          backgroundColor: Colors.blue[800],),
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
                              Text("Stroke",
                                style:TextStyle(
                                    fontSize:40, fontWeight: FontWeight.bold,
                                    fontFamily: 'sourceserif',
                                    color: Colors.black),)]),
                        SizedBox(height: 20,),
                        Text("Q1) Enter gender:",
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
                              gender=int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q2) Enter age:",
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
                        SizedBox(height: 20,),
                        Text("Q3) Have they been diagnosed with hypertension or high blood pressure?",
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
                              hypertension=int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q4) Have they been diagnosed with any heart diseases?",
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
                              heart_disease=int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q5) Are they currently married?",
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
                              ever_married=int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q6) Do they live in an urban or rural area?",
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
                              Residence_type=int.parse(val);
                            }),
                        SizedBox(height: 20,),
                        Text("Q7) What is their average glucose level in their blood?",
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
                        Text("Q8) What is their body mass index (BMI)?",
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
                        SizedBox(height: 24,),
                        SizedBox(height: 20,),
                        Text("Q9) What is their current or past smoking status?",
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
                              smoking_status=int.parse(val);
                            }),
                        SizedBox(height: 24,),
                        SizedBox(height: 20,),
                        Text("Q10) Are they a child, government employee, private employee, or self-employed?",
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
                              work_type=int.parse(val);
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