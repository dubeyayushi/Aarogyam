import 'package:flutter/material.dart';
import 'package:my_project/widgets/widgets.dart';
class lungcancer extends StatefulWidget {

  @override
  State<lungcancer > createState() => _lungcancerState();
}

class _lungcancerState extends State<lungcancer> {
  @override
  final _formkey2= GlobalKey<FormState>();
  late int gender,Air_pollution,Alcohol_use,Dust_allergy,Occupational_hazards,Genetic_risk,Chronic_lung_disease,Balanced_diet,Obesity,age,Smoking, Passive_smoker, Chest_pain, Coughing_of_blood, Fatigue, Weight_loss, Shortness_of_breath, Wheezing, Swallowing_difficulty, Clubbing_of_finger_nails, Frequent_cold, Dry_cough, Snoring;
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
                          Container(

                            child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              Text("Lung Cancer",
                              style:TextStyle(
                              fontSize:40, fontWeight: FontWeight.bold,
                              fontFamily: 'sourceserif'))]),
                          ),
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
                          Text("Q3) What is the level of air polltuion exposure to the patient?",
                            style:TextStyle(
                              fontSize:18,
                              fontWeight: FontWeight.bold,
                            ) ,),
                          TextFormField(
                              validator: (val){ return val!.isEmpty ? "Enter Value": null;},
                              decoration: InputDecoration(
                                  hintText: "Enter Value"),
                                  onChanged:(val){
                          Air_pollution=int.parse(val);
                          }),
                          SizedBox(height: 20,),
                          Text("Q4) What is the level of alcohol use of the patient?",
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
                                Alcohol_use=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q5) What is the level of dust allergy of the patient?",
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
                                Dust_allergy=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q6) What is the level of occupational hazards of the patient?",
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
                                Occupational_hazards=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q7) What is the level of genetic risk of the patient?",
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
                                Genetic_risk=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q8) What is the level of chronic lung disease of the patient?",
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
                                Chronic_lung_disease=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q9) What is the level of balanced diet of the patient?",
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
                                Balanced_diet=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q10) What the level of obesity of the patient?",
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
                                Obesity=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q11) What is the level of smoking of the patient ",
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
                                Smoking=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q12) What is the level of passive smoking of the patient?",
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
                                Passive_smoker=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q13) What is the level of chest pain of the patient?",
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
                                Chest_pain=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q14) What is the level of coughing of blood of the patient?",
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
                                Coughing_of_blood=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q15) What is the level of fatigue of the patient?",
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
                                Fatigue=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q16) What is the level of weight loss of the patient? ",
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
                                Weight_loss=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q17) What is the level of shortness of breath of the patient?",
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
                                Shortness_of_breath=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q18) What is the level of wheezing of the patient?",
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
                                Wheezing=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q19) What is the level of swallowing difficulty of the patient?",
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
                                Swallowing_difficulty=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q20) What is the level of clubbing of finger nails of the patient?",
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
                                Clubbing_of_finger_nails=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q21) What is the level of catching frequent cold by the patient?",
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
                                Frequent_cold=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q22) What is the level of dry cough experienced by the patient?",
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
                                Dry_cough=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          Text("Q23) What is the level of snoring by the patient?",
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
                                Snoring=int.parse(val);
                              }),
                          SizedBox(height: 20,),
                          GestureDetector(
                            onTap: () {


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
                           ],
                      )

                  )
              )),
        )
    );

  }
}