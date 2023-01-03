

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:malik_matka/main.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final formkey = GlobalKey<FormState>();
  final snackBar = GlobalKey<FormState>();
  String name="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFffffff),
      body: Container(
        padding: const EdgeInsets.only(left: 40,right: 40),
        child: Form(
          key: formkey, 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:4),
              Text("Welcome",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
              Text("Back !",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter Mobile Number"
                ),
                validator: (value){
                  if(value!.isEmpty ||RegExp(r'^[0-9]{0-10}+$').hasMatch(value)){
                    return "Enter Correct Mobile Number";
                  }else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Password"
                ),
                validator: (value){
                  if(value!.isEmpty ||RegExp(r'^[a-z A-Z 1-10 @ # $ & * ?]+$').hasMatch(value)){
                    return "Incorrect Password";
                  }else{
                    return null;
                  }
                },
              ),

              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sign up",style: TextStyle(fontSize: 22,color: Colors.black),),
                  NeumorphicButton(
                    margin: EdgeInsets.only(top: 12),
                    onPressed: (){
                    if(formkey.currentState!.validate()){

                      final snackBar = SnackBar(content: Text("Submitting form"));
                    }
                    },
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.circle(),
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
