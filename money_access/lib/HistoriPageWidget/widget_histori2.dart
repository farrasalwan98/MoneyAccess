import 'package:flutter/material.dart';

class HistoriPageWidget extends StatelessWidget {
  const HistoriPageWidget({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
                    margin: EdgeInsets.all(10),
                    child: ListView(
                      children: [
                        ListTile(
                          title: Text(
                            "2021-07-12 15:25 WIB",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Virtual Account                                                                8126371652316253',
                            maxLines: 3,
                          ),
                          dense: true,
                          isThreeLine: true,
                          trailing: Text(
                            "Berhasil",
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                        Divider(
                          height: 20,
                          color: Colors.black,
                        ),
                        ListTile(
                          title: Text(
                            "2021-07-12 15:55 WIB",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Virtual Account                                                                8126371652316253',
                            maxLines: 3,
                          ),
                          dense: true,
                          isThreeLine: true,
                          trailing: Text(
                            "Pending",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        Divider(
                          height: 20,
                          color: Colors.black,
                        ),
                      ],
                    ))
              
    );
  }
}