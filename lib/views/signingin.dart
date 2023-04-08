import 'package:flutter/material.dart';
import 'package:my_project/views/signup.dart';
import 'package:my_project/widgets/widgets.dart';
import 'diseaselist.dart';
class Signingin extends StatefulWidget {
  @override
  State<Signingin> createState() => _SigninginState();
}

class _SigninginState extends State<Signingin> {
  final _formkey= GlobalKey<FormState>();
  late String email,password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
        child:Container(
          padding:EdgeInsets.symmetric(horizontal: 15),
          constraints: BoxConstraints.expand(),
          decoration:  BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('https://image.slidesdocs.com/responsive-images/background/blue-cross-medical-abstract-health-theme-blue-health-powerpoint-background_952ad55646__960_540.jpg'),
                colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.modulate,),
                fit: BoxFit.cover),),
          child: Column(
            children: [
              SizedBox(height: 30,),
            Text("आरोग्यम्",style: TextStyle(
              fontSize: 150,
              color: Colors.blue[800],
              fontFamily:'alkatra',
          ),),
              SizedBox(height:15),
              //Text("स्वस्थस्य स्वास्थ्य रक्षणं",
                //textAlign: TextAlign.start,
                //style: TextStyle(
                //fontSize: 30,
                //color: Colors.blue[400],
                //fontFamily:'alkatra',
              //),),'''
              Spacer(),
              TextFormField(
                validator: (val){ return val!.isEmpty ? "Enter EmailId": null;},
                decoration: InputDecoration(
                    hintText: "Email"
                ),
                onChanged:(val){
                  email=val;
                },
              ),
              SizedBox(height: 6,),
              TextFormField(
                validator: (val){ return val!.isEmpty ? "Enter Password": null;},
                decoration: InputDecoration(
                    hintText: "Password"
                ),
                onChanged:(val){
                  password=val;
                },
              ),
              SizedBox(height: 24,),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context)=> Home()));
                },
                child: Container(
                  padding:EdgeInsets.symmetric(vertical: 18) ,
                  decoration: BoxDecoration(
                      color:Colors.blue[800],
                      borderRadius: BorderRadius.circular(30)
                  ),
                  height:55 ,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width-48,
                  child: Text("Sign In",style:TextStyle(
                    color: Colors.white,
                    fontSize:15,
                    fontWeight: FontWeight.bold,
                  ) ,),
                ),
              ),
              SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ",style:TextStyle(fontSize:15.5),),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context)=> SignUp()));
                    },
                    child:
                    Text("Sign Up",style:TextStyle(fontSize:15.5,
                        decoration: TextDecoration.underline),),
                  ),
                ],
              ),
              SizedBox(height: 40,),

          ]
          )
        )
        )
    );}
}