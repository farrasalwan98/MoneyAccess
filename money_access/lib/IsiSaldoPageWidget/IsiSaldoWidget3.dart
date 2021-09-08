import 'package:flutter/material.dart';

class IsiSaldoWidget3 extends StatefulWidget {
  const IsiSaldoWidget3({Key key}) : super(key: key);

  @override
  _IsiSaldoWidget3State createState() => _IsiSaldoWidget3State();
}

class _IsiSaldoWidget3State extends State<IsiSaldoWidget3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ExpansionTile(
            childrenPadding: EdgeInsets.symmetric(horizontal: 25),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            title: Text(
              "ATM BNI",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            children: [
              Text("1. Login ke BNI Mobile Banking Anda"),
              Text("2. Pilih menu Transfer > Virtual Account Billing"),
              Text(
                "3. Masukkan nomor Virtual Account yang didapatkan dari aplikasi Money Access",
                maxLines: 2,
              ),
              Text(
                  "4. Konfirmasi transaksi dengan memasukkan PIN Mobile Banking Anda"),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              Text(
                "Catatan",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                " - Jumlah Minimum untuk top up adalah Rp 10.000",
              ),
            ],
          ),
          ExpansionTile(
            childrenPadding: EdgeInsets.symmetric(horizontal: 25),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            title: Text(
              "Internet Banking",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            children: [
              Text("1. Login ke BNI Mobile Banking Anda"),
              Text("2. Pilih menu Transfer > Virtual Account Billing"),
              Text(
                "3. Masukkan nomor Virtual Account yang didapatkan dari aplikasi Money Access",
                maxLines: 2,
              ),
              Text(
                  "4. Konfirmasi transaksi dengan memasukkan PIN Mobile Banking Anda"),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              Text(
                "Catatan",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                " - Jumlah Minimum untuk top up adalah Rp 10.000",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
