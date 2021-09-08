import 'package:flutter/material.dart';
import 'package:money_access/KirimUangWidget/widget_detil_transaksi.dart';

class DetilTransaksi extends StatelessWidget {
  const DetilTransaksi({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1A237E),
          title: Text("Detil Transaksi"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 22),
          child: ListView(
            children: [
              Column(
                children: [
                  Text("Berhasil",
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xFF1A237E)
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 22),
                    child: Text("TRANSFER BERHASIL SESAMA MONEY ACCESS",
                    style: TextStyle(
                      fontSize: 18
                    ),
                    textAlign: TextAlign.center,
                    ),
                  ),
                  Divider(
                    height: 6,
                    color: Colors.indigo,
                  ),
                  ListTile(
                    title: Text("TOTAL",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    trailing: Text("Rp 5.000",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    ),
                  ),
                  Container(
                    color: Color(0xFF1A237E),
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Detail Transaksi",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ],
                    ),
                  ),
                  WidgetDetilTransaksi()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}