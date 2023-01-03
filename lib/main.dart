import 'package:flutter/material.dart';
import 'package:malik_matka/ForgotPassword.dart';
import 'package:malik_matka/HomePage.dart';
import 'package:malik_matka/Register.dart';
import 'package:malik_matka/login.dart';
import 'package:malik_matka/payment.dart';
import 'package:malik_matka/wallet.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login':(context)=>MyLogin(),
        'register':(context)=>MyRegister(),
        'home':(context)=>MyHomePage(),
        'wallet':(context)=>MyWallet(),
        'password':(context)=>ForgotPassword(),
        'payment':(context)=>MyPayment(),
      },
    );
  }
}

