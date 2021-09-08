import 'package:flutter/material.dart';
import 'package:money_access/widgetpusatbantuan/bantuan_widget.dart';

class PusatBantuan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1A237E),
          title: Text("Pusat Bantuan"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: ListView(children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Kami siap membantu anda !",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text("Senin - Jum'at"),
                Text("Pukul 08.30 - 16.00 WIB"),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 15, 20),
                    child: Text(
                        "Semua informasi dan keluhan terkait Money Access dapat menghubungi :")
                ),
                Divider(
                  height: 10,
                  color: Colors.indigo,
                ),
                BantuanWidget(),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
