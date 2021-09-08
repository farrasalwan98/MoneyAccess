import 'package:flutter/material.dart';

class TanyaJawabPage extends StatelessWidget {
  const TanyaJawabPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1A237E),
          title: Text("Apa itu Money Access"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Money Access merupakan aplikasi pintar yang memberikan kemudahan, kenyamanan dan keamanan berinteraksi untuk memenuhi kebutuhan anda di manapun dan kapanpun.",
              textAlign: TextAlign.justify,
              maxLines: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}