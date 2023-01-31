import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
   NavBar({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(''),
            accountEmail: Text(user.email!),
          ),
          ListTile(
            leading: const Icon(Icons.wallet),
            title: const Text('Wallet'),
            iconColor: Colors.brown,
            onTap: () => Navigator.pushNamed(context, 'wallet'),
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: const Text('Bids History'),
            iconColor: Colors.purple,
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.currency_exchange_outlined),
            title: const Text('Wins History'),
            iconColor: Colors.amber,
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.chart_bar_square_fill),
            title: const Text('Markets Rates'),
            iconColor: Colors.purpleAccent,
            onTap: () => Navigator.pushNamed(context, 'rates'),
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Help and Guide'),
            iconColor: Colors.redAccent,
            onTap: () => Navigator.pushNamed(context, 'help'),
          ),
          ListTile(
            leading: const Icon(Icons.share_outlined),
            title: const Text('Share our App'),
            iconColor: Colors.blueAccent,
            onTap: () => Navigator.pushNamed(context, 'share'),
          ),
          ListTile(
            leading: const Icon(Icons.star_border_purple500),
            title: const Text('Rate Us'),
            iconColor: Colors.yellow,
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.lock_open_rounded),
            title: const Text('Change Password'),
            iconColor: Colors.black,
            onTap: () => Navigator.pushNamed(context, 'password'),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            iconColor: CupertinoColors.systemIndigo,
            onTap: (){
              FirebaseAuth.instance.signOut();

            } ,
          ),
        ],
      ),
    );
  }
}


