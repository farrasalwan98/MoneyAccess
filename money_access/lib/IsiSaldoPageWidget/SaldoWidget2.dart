import 'package:flutter/material.dart';
import 'package:money_access/IsiSaldoPageWidget/IsiSaldoWidget3.dart';

class SaldoWidget2 extends StatefulWidget {
  const SaldoWidget2({Key key}) : super(key: key);

  @override
  _SaldoWidget2State createState() => _SaldoWidget2State();
}

class _SaldoWidget2State extends State<SaldoWidget2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ExpansionTile(
                  childrenPadding: EdgeInsets.symmetric(horizontal: 25),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  title: Text(
                    "Mobile Banking BNI",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  children: [
                    Text("1. Login ke BNI Mobile Banking Anda"),
                    Text("2. Pilih menu Transfer > Virtual Account Billing"),
                    Text(
                      "3. Masukkan nomor Virtual Account yang didapatkan dari aplikasi Money Access",
                      maxLines: 2,
                    ),
                    Text("4. Konfirmasi transaksi dengan memasukkan PIN Mobile Banking Anda"),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    Text("Catatan", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(" - Jumlah Minimum untuk top up adalah Rp 10.000",),
                  ],
                ),
                IsiSaldoWidget3(),
                ],
            )));
  }
}
