import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../buattagihan.dart';

class KirimTagihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kirim Tagihan",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color(0xFF1A237E),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Ditujukan Kepada"),
                TextFormField(
                  keyboardType: TextInputType.number,
                  // ignore: deprecated_member_use
                  inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Masukkan Jumlah Nominal"),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(hintText: '0', prefixText: 'Rp.'),
                        // ignore: deprecated_member_use
                        inputFormatters: [
                          // ignore: deprecated_member_use
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Catatan"),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Tulis Catatan',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                        maxLength: 25,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 342,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.amber,
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return BuatTagihan();
                                }));
                              },
                              child: Center(
                                child: Text(
                                  "BAYAR TAGIHAN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF1A237E),
                                  Color(0xFF01579B),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
