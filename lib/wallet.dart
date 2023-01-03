import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:malik_matka/NavBar.dart';
import 'package:malik_matka/colors.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MywalletState();
}

class _MywalletState extends State<MyWallet> {

  int index = 0;
 PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text("Malik Matka"),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: controller,
              children: [
                SingleChildScrollView(
                  child: Container(
                    padding:const EdgeInsets.all(12),
                    decoration:const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [Column(
                            children: [
                              Text("Current Balance",style: GoogleFonts.poppins(
                                  fontSize: 20,fontWeight: FontWeight.bold),),
                              Text("5 Pts",style: GoogleFonts.poppins(
                                  fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),

                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ButtonWidget(text: 'ADD',icon: Iconsax.add,callback: (){}),
                            ButtonWidget(text: 'WITHDRAW',icon: Iconsax.export,callback: (){}),

                           ],
                         ),
                        const SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Last Transactions',style: GoogleFonts.poppins(
                                fontSize: 18,fontWeight: FontWeight.bold),),
                            Text('View All',style: GoogleFonts.poppins(
                                fontSize: 13,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        //ListView.builder(
                        //  itemCount:,
                        //  itemBuilder((context,index)=>listTile()))
                        ListTile(
                          title: Text('20 Points Added',style: GoogleFonts.poppins(
                              fontSize: 18,fontWeight: FontWeight.bold),),
                          subtitle: Text('By Paytm',style: GoogleFonts.poppins(
                              fontSize: 18),),
                          trailing: Text(r'Rs.20',style: GoogleFonts.poppins(
                              fontSize: 18,fontWeight: FontWeight.bold),),
                        )
                       ],
                     ),
                   ),


                )
              ],
            ),

          ],
        ),
      ),


    );
  }


}

class ButtonWidget extends StatelessWidget {
 final String text;
 final IconData icon;
 final VoidCallback callback;
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.callback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [OutlinedButton(
          onPressed:callback,
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
        side: const BorderSide(color: Colors.transparent),
        padding:const EdgeInsets.all(16),
        elevation: 5,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey.withOpacity(0.2),

          ),
          child: Icon(icon,color: secondaryColor,),
        ),
       const SizedBox(height: 4,),
        Text(text,style: GoogleFonts.poppins(
            fontSize: 12,fontWeight: FontWeight.bold),),
      ],
     );
  }
}
