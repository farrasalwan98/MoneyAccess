import 'package:flutter/material.dart';
import 'package:money_access/widgetpusatbantuan/tanyajawabpage.dart';

class TanyaJawabWidget2 extends StatelessWidget {
  const TanyaJawabWidget2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ExpansionTile(
                childrenPadding: EdgeInsets.symmetric(horizontal: 25),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                title: Text(
                  "Produk/Layanan",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return TanyaJawabPage();
                      }));
                    },
                    child: Text("Apa itu Money Access",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    "Apa saja fitur yang dimiliki Money Access",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              ExpansionTile(title: Text("Pengelolaan Akun")),
              ExpansionTile(title: Text("Penggunaan Fitur Layanan")),
              ExpansionTile(title: Text("Service Money Access")),
            ]),
      ),
    );
  }
}
