import 'package:flutter/material.dart';
import 'NavBar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(

      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text("Malik Matka"),


        actions: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 20,

              child: IconButton(
                color: Colors.white,
                onPressed: (){
                  Navigator.pushNamed(context, 'wallet');
                },
                icon: Icon(Icons.account_balance_wallet),
              ),

            ),
          ),
        ],
      ),

     body: Column(
       children: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),
           child: Container(
             height: 150,
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage('assets/malik.png'),
               ),

               borderRadius: BorderRadius.circular(10)
             ),
           ),
         ),
       ],
     ),
    );
  }
}