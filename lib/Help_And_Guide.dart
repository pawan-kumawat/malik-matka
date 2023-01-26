// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:malik_matka/NavBar.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHelp extends StatefulWidget {
  const MyHelp({Key? key}) : super(key: key);

  @override
  State<MyHelp> createState() => _MyHelpState();
}

class _MyHelpState extends State<MyHelp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Help And Guidance',
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.purple,
            padding: EdgeInsets.all(13),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                ),
                Text(
                  'How To Play',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/malik2.png')
                ,)),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Container(
                width: 300,
                child: Column(children: [
                  Align(
                    alignment: Alignment.center,
                  ),
                  Text(
                    'Simply download our application from Google Play Store or from our official website. Register with your Mobile Number,Email ID,UserName with our platform.Login with the application using Mobile Number And Password .Select the Game Type,select your favourite number and start to Play Games .',
                    style: TextStyle(
                      wordSpacing: 3,
                      letterSpacing: 1,
                      fontSize: 16,
                      color: Colors.grey.shade700,
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child:InkWell(
                  onTap: () =>launch("https://www.youtube.com/watch?v=xrR3xQNeB_Y"),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 224, 94, 65),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Watch Video',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}