import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {


  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1A237E),
          title: Center(child: Text("Info"),
          ),
        ),
      ),
    );
  }
}