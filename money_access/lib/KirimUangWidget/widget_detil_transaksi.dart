import 'package:flutter/material.dart';

class WidgetDetilTransaksi extends StatelessWidget {
  const WidgetDetilTransaksi({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: [
            ListTile(
              title: Text("Metode Pembayaran"),
              subtitle: Text("Money Access"),
            ),
            ListTile(
              title: Text("Penerima"),
              subtitle: Text("Addian"),
            ),
            ListTile(
              title: Text("Catatan"),
              subtitle: Text("Transfer ke 08127316821 sebesar Rp 5.000, bayar hutang",
              maxLines: 2,),
            ),
            ListTile(
              title: Text("Tanggal Transaksi"),
              subtitle: Text("2021-09-10 12:30:54"),
            ),
            ListTile(
              title: Text("Nomor Transaksi"),
              subtitle: Text("301923172638711"),
            ),
            Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: deprecated_member_use
                    SizedBox(
                      width: 370,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        color: Color(0xFF1A237E),
                        onPressed: () {
                          Navigator.of(context).pop();
                      }, child: Text("TUTUP",
                      style: TextStyle(
                        color: Colors.white
                      ),
                      )),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}