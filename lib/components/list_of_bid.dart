import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainList extends StatelessWidget {
  final String text;
  final String text2;

  const MainList({super.key , required this.text,
  required this.text2});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),
      child: ListTile(
        leading: TextButton(onPressed: (){},
          child: CircleAvatar(
            child:   Image.asset('assets/stock.png.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Center(
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              text,style: TextStyle(
              color: Colors.black,fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),
        subtitle: Center(
          child: Text(
            text2,style: TextStyle(
            color: Colors.red,
            fontSize: 20
          ),
          ),
        ),

        trailing: IconButton(
          alignment: Alignment.centerRight,
          color: Colors.red,
          onPressed: (){},
          icon: Icon(
            Iconsax.play_circle,size: 40,
          ),
        ),

        onTap: (){},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topRight: Radius.circular(20))
        ),
        selected: true,
        selectedTileColor: Colors.blueAccent.withOpacity(0.2),

      ),
    );
  }
}
