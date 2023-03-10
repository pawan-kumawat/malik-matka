import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:malik_matka/components/my_textfield.dart';
import 'package:malik_matka/components/square_tile.dart';


class MyLogin extends StatefulWidget {
  MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _emailcontroller =TextEditingController();
  final _passwordcontroller =TextEditingController();



  void signIn() async{

    //show loading circle
    showDialog(
      context: context,
      builder:(context){
      return const Center(child: CircularProgressIndicator(),);
    },
    );


    //try sign in
 try{
   await FirebaseAuth.instance.
   signInWithEmailAndPassword(
       email: _emailcontroller.text.trim(),
       password: _passwordcontroller.text.trim(),
   );

   //pop the loading circle
       Navigator.pop(context);
 }

 on FirebaseAuthException catch (e) {
   //pop the loading circle
   Navigator.pop(context);
 //wrong email
   if(e.code == "user-not-found!"){
     //show error to user
     wrongEmailMessage();
   }

   //wrong password
   else if(e.code == 'wrong-password'){
     //show error to user
     wrongPasswordMessage();
    }
 }
}
//wrong email message popup
  void wrongEmailMessage(){
    showDialog(context: context, builder: (context){
      return
      AlertDialog
        (
        title: Text("Incorrect Email"),
      );
    });
  }

  void wrongPasswordMessage(){
    showDialog(context: context, builder: (context){
      return
      AlertDialog
        (
        title: Text("Incorrect Password"),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
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
                    controller: _emailcontroller,
                    hintText: 'E-mail',
                    obscureText: false,
                  ),
                  const SizedBox(height: 25,),

                  //password textfield
                  MyTextField(
                    controller: _passwordcontroller,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  SizedBox(height: 5,),
                  //forgot password button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      TextButton(onPressed: (){}, child:  Text('Forgot Password?',style: TextStyle(color: Colors.grey.shade600),),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  //Sign in button
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
                     child: GestureDetector(
                       onTap: ()=>signIn(),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text('Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,fontSize: 18,
                          ),),
                        ),
                      ),
                  ),
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

                  SizedBox(height: 40,),
                  //google  button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //google button
                     TextButton(onPressed: (){},
                          child: SquareTile(imagePath: 'assets/google.png',),
                      ),
                      TextButton(onPressed: (){},
                        child: SquareTile(imagePath: 'assets/apple.png'),
                      ),
                      ],
                  ),

                    const SizedBox(height: 30,),
                  //not a member?Register Now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a Member?'),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, 'register');
                      },
                      child: Text('Register Now',style: TextStyle(color: Colors.blue),),
                      )


                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


