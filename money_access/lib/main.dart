import 'package:flutter/material.dart';
import 'package:money_access/Login/login_page.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      
    );
  }
  
}