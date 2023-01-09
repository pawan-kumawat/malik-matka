
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(
     child: ListView(
       padding: EdgeInsets.zero,
       children:  [
         UserAccountsDrawerHeader(accountName: const Text('Pawan'),
           accountEmail: const Text('Example@gmail.com'),
           currentAccountPicture: CircleAvatar(
             child: ClipOval(
               child: Image.network(
                 'https://avatars.githubusercontent.com/u/109915881?s=400&u=fcee72ac83b747ab295aa9225afa87c79896cb0e&v=4',
                 width: 90,
                 height: 90,
                 fit: BoxFit.cover,
               ),
             ),
           ),
           decoration: const BoxDecoration(
             color: Colors.blue,
             image: DecorationImage(
               image: NetworkImage(
                 'https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg'
               ),
               fit: BoxFit.cover,
             ),
           ),
         ),
         ListTile(
           leading:const Icon(Icons.wallet) ,
           title:const Text('Wallet'),
           iconColor: Colors.brown,
           onTap: ()=>Navigator.pushNamed(context, 'wallet'),
         ), ListTile(
           leading:const Icon(Icons.calendar_month) ,
           title:const Text('Bids History'),
           iconColor: Colors.purple,
           onTap: ()=>null,
         ), ListTile(
           leading:const Icon(Icons.currency_exchange_outlined) ,
           title:const  Text('Wins History'),
           iconColor: Colors.amber,
           onTap: ()=>null,
         ), ListTile(
           leading:const Icon(CupertinoIcons.chart_bar_square_fill) ,
           title:const Text('Markets Rates'),
           iconColor: Colors.purpleAccent,
           onTap: ()=>Navigator.pushNamed(context, 'rates'),
         ), ListTile(
           leading:const Icon(Icons.help) ,
           title:const Text('Help and Guide'),
          iconColor: Colors.redAccent,
           onTap: ()=>null,
         ), ListTile(
           leading:const Icon(Icons.share_outlined) ,
           title:const Text('Share our App'),
           iconColor: Colors.blueAccent,
           onTap: ()=>null,
         ), ListTile(
           leading:const Icon(Icons.star_border_purple500) ,
           title:const Text('Rate Us'),

           iconColor: Colors.yellow,
           onTap: ()=>null,
         ), ListTile(
           leading:const Icon(Icons.lock_open_rounded) ,
           title:const  Text('Change Password'),
           iconColor: Colors.black,
          onTap: ()=>Navigator.pushNamed(context, 'password'),

         ), ListTile(
           leading:const Icon(Icons.logout) ,
           title:const Text('Logout'),
           iconColor: CupertinoColors.systemIndigo,
           onTap: ()=>Navigator.pushNamed(context, 'login'),

         ),
       ],
     ),
    );
  }
}
