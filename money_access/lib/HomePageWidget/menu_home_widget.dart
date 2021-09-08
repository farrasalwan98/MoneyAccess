import 'package:flutter/material.dart';

import '../Pulsa/pulsa.dart';

class MenuHomeWidget extends StatelessWidget {
  const MenuHomeWidget({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                    Row(
                      children: [
                        Icon(
                          Icons.lightbulb_sharp,
                          color: Colors.orangeAccent,
                          size: 37,
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 26)),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Pulsa();
                            }));
                          },
                          child: Icon(
                            Icons.phone_android_rounded,
                            color: Colors.orangeAccent,
                            size: 37,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 26)),
                        Icon(
                          Icons.phonelink_ring_rounded,
                          color: Colors.orangeAccent,
                          size: 37,
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                        Icon(
                          Icons.medical_services_rounded,
                          color: Colors.orangeAccent,
                          size: 37,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                        Text(
                          "PLN",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 32)),
                        Text(
                          "Pulsa",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                        Text(
                          "Paket Data",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 18)),
                        Text(
                          "BPJS",
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