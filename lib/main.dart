import 'package:flutter/material.dart';
import 'package:malik_matka/ForgotPassword.dart';
import 'package:malik_matka/HomePage.dart';
import 'package:malik_matka/Register.dart';
import 'package:malik_matka/login.dart';
import 'package:malik_matka/main_page.dart';
import 'package:malik_matka/marketRates.dart';
import 'package:malik_matka/payment.dart';
import 'package:malik_matka/wallet.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: {
        'login':(context)=>MyLogin(),
        'register':(context)=>MyRegister(),
        'home':(context)=>MyHomePage(),
        'wallet':(context)=>MyWallet(),
        'password':(context)=>ForgotPassword(),
        'payment':(context)=>MyPayment(),
        'rates':(context)=>MarketRates(),
      },
    );
  }
}

