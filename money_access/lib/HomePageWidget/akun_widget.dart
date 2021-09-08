import 'package:flutter/material.dart';

class AkunWidgetHome extends StatelessWidget {
  const AkunWidgetHome({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.account_circle_rounded,
                            color: Colors.white,
                            size: 90,
                          ),
                          subtitle: Text(
                            "Rp.10.000",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          title: Text(
                            "Money Cash",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 70),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Money point 0",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
    );
  }
}