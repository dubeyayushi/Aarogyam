import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_project/views/diseaselist.dart';
import 'package:my_project/views/signingin.dart';

import '../widgets/widgets.dart';
class SignUp extends StatefulWidget {


  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formkey= GlobalKey<FormState>();
  late String name,email,password;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body: Form(
          child:Container(

            padding:EdgeInsets.symmetric(horizontal: 24),
            constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://image.slidesdocs.com/responsive-images/background/blue-cross-medical-abstract-health-theme-blue-health-powerpoint-background_952ad55646__960_540.jpg'),
                  colorFilter: ColorFilter.mode(Colors.white60,BlendMode.modulate,),
                  fit: BoxFit.cover),),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text("आरोग्यम्",style: TextStyle(
                  fontSize: 150,
                  color: Colors.blue[800],
                  fontFamily:'alkatra',
                ),),
                Spacer(),
                TextFormField(
                  validator: (val){ return val!.isEmpty ? "Enter Name": null;},
                  decoration: InputDecoration(
                      hintText: "Name"
                  ),
                  onChanged:(val){
                    name=val;
                  },
                ),
                SizedBox(height: 6,),
                TextFormField(
                  validator: (val){ return val!.isEmpty ? "Enter EmailId": null;},
                  decoration: InputDecoration(
                      hintText: "Email"
                  ),
                  onChanged:(val){

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
                    child: Text("Sign Up",style:TextStyle(
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
                    Text("Already have an account? ",style:TextStyle(fontSize:15.5),),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context)=> Signingin()));
                      },
                      child:
                        Text("Sign In",style:TextStyle(fontSize:15.5,
                            decoration: TextDecoration.underline),),
                    ),
                  ],
                ),
                SizedBox(height: 40,),
              ],

            ),
          ),
        )
    );
  }
}



