import 'package:flutter/material.dart';

class MenuHomeWidget2 extends StatelessWidget {
  const MenuHomeWidget2({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 80),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                    Row(
                      children: [
                        Icon(
                          Icons.tv,
                          color: Colors.orangeAccent,
                          size: 37,
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 26)),
                        Icon(
                          Icons.attach_money,
                          color: Colors.orangeAccent,
                          size: 37,
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 26)),
                        Icon(
                          Icons.train,
                          color: Colors.orangeAccent,
                          size: 37,
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                        Icon(
                          Icons.keyboard_control,
                          color: Colors.orangeAccent,
                          size: 37,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "TV Kabel",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 18)),
                        Text(
                          "Financial",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                        Text(
                          "Ticket KAI",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 18)),
                        Text(
                          "Lainnya",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
    );
  }
}