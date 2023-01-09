import 'package:flutter/material.dart';
import 'package:malik_matka/NavBar.dart';


class MarketRates extends StatelessWidget {
  const MarketRates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text("Market Rates"),
          backgroundColor: Colors.purple,
          centerTitle: true,

        ),
         body: ListView(
           padding: EdgeInsets.all(5),
           children: [
             ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Container(padding: EdgeInsets.all(20),
                 color: Colors.purple,
                 
                 child: Row(
                   children: [
                     Expanded(child: Text('Single',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                     Text('10-100',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                   ],

                 ),
               ),
             ),
             SizedBox(height: 5,),
             ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Container(padding: EdgeInsets.all(20),
                 color: Colors.purple,

                 child: Row(
                   children: [
                     Expanded(child: Text('Double',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                     Text('10-900',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                   ],

                 ),
               ),
             ),
             SizedBox(height: 5,),
             ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Container(padding: EdgeInsets.all(20),
                 color: Colors.purple,

                 child: Row(
                   children: [
                     Expanded(child: Text('Single Pana',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                     Text('10-1400',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                   ],

                 ),
               ),
             ),
             SizedBox(height: 5,),
             ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Container(padding: EdgeInsets.all(20),
                 color: Colors.purple,

                 child: Row(
                   children: [
                     Expanded(child: Text('Double Pana',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                     Text('10-2800',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                   ],

                 ),
               ),
             ),
             SizedBox(height: 5,),
             ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Container(padding: EdgeInsets.all(20),
                 color: Colors.purple,

                 child: Row(
                   children: [
                     Expanded(child: Text('Triple Pana',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                     Text('10-7000',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                   ],

                 ),
               ),
             ),
             SizedBox(height: 5,),
             ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Container(padding: EdgeInsets.all(20),
                 color: Colors.purple,

                 child: Row(
                   children: [
                     Expanded(child: Text('Half Sangram',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                     Text('10-10000',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                   ],

                 ),
               ),
             ),
             SizedBox(height: 5,),
             ClipRRect(
               borderRadius: BorderRadius.circular(10),
               child: Container(padding: EdgeInsets.all(20),
                 color: Colors.purple,

                 child: Row(
                   children: [
                     Expanded(child: Text('Full Sangram',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                     Text('10-100000',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                   ],

                 ),
               ),
             ),

           ],


         ),
      );


  }
  }

    
  

 
  
  

