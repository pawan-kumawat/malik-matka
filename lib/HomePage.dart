import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:malik_matka/wallet.dart';
import 'NavBar.dart';
import 'package:malik_matka/components/list_of_bid.dart';


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
     body: ListView(
       children: [
         Padding(padding: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
           child: Container(

           height: 150,
           decoration: BoxDecoration(

             borderRadius: BorderRadius.only(topRight:Radius.circular(30),bottomLeft: Radius.circular(30) ) ,
             image: DecorationImage(fit: BoxFit.cover,
                 image: AssetImage('assets/malik.png'))
           ),
       ),
         ),Padding(

           padding: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
           child: Container(

             height: 150,
             width: 450,
             decoration: BoxDecoration(
                 color: Colors.deepPurple,
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),topRight: Radius.circular(30))
             ),

             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child:
               Column(

                 children: [

                   Row(


                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [


                       ButtonWidget(text: 'Add',icon: Iconsax.add,callback: (){}),
                       ButtonWidget(text: 'Withdraw',icon: Iconsax.arrow_down,callback: (){}),
                       ButtonWidget(text: 'Starline ',icon: Iconsax.star,callback: (){}),
                       ButtonWidget(text: 'Disawar ',icon: Iconsax.warning_2,callback: (){}),


                     ],

                   ),
                   SizedBox(height: 10,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                           width: 140,
                           alignment: Alignment.center,
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.black),
                             borderRadius: BorderRadius.circular(5),
                             color: Colors.white,
                           ),

                           child: Text('968****602',)),

                     ],

                   ),

                 ],

               ),

             ),

           ),

         ),
         MainList(text: 'RUDRAKSH MORNING', text2: '289-92-200'),
         MainList(text:'  MORNING', text2: '***-**-***'),
         MainList(text: 'KALYAN MORNING', text2: '460-09-234'),
         MainList(text: 'MADHUR MORNING', text2: '***-**-***'),
         MainList(text: 'SRIDEVI', text2: '***-**-***'),
         MainList(text: 'TIME BAZAR', text2: '***-**-***'),
         MainList(text: 'MADHUR DAY', text2: '***-**-***'),
         MainList(text: 'RUDRAKSH DAY', text2: '190-08-459'),
         MainList(text: 'RAJDHANI NIGHT', text2: '***-**-***'),




      ],
    ),
    );
  }
}