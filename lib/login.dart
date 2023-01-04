
import 'package:flutter/material.dart';
import 'package:malik_matka/components/my_button.dart';
import 'package:malik_matka/components/my_textfield.dart';
import 'package:malik_matka/components/square_tile.dart';

class MyLogin extends StatelessWidget {
  MyLogin({Key? key}) : super(key: key);

  final usernamecontroller =TextEditingController();
  final passwordcontroller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40,),
              //logo
              const Icon(Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50,),

              //welcome back you've been missed!
              Text('Welcome Back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25,),

              //username textfield
              MyTextField(
                controller: usernamecontroller,
                hintText: 'username',
                obscureText: false,
              ),
              const SizedBox(height: 25,),

              //password textfield
              MyTextField(
                controller: passwordcontroller,
                hintText: 'Password',
                obscureText: true,
              ),

              SizedBox(height: 10,),
              //forgot password button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?',style: TextStyle(color: Colors.grey.shade600),),
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              //Sign in button
              MyButton(
                onTap: ()=>Navigator.pushNamed(context, 'home'),
              ),
              const SizedBox(height: 25,),
              //or continue to
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25.0),
               child: Row(
                 children: [
                   Expanded(child:
                   Divider(
                     thickness:0.5,
                     color: Colors.grey.shade400,
                   )
                   ),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
                     child: Text('Or Continue With',
                     style: TextStyle(color: Colors.grey.shade700),),
                   ),

                   Expanded(child:
                   Divider(
                     thickness:0.5,
                     color: Colors.grey.shade400,
                   )
                   )
                 ],
               ),
             ),


              //google  button
              Row(
                children: [
                  //google button
                  SquareTile(imagePath: 'assets/google.png',),


                  //apple button
                  SquareTile(imagePath: 'assets/appple.png',)
                  ]
              )

              //not a member?Register Now

            ],
          ),
        ),
      ),
    );
  }
}


