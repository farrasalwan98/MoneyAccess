import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_access/KirimUangWidget/kirim_uangwidget.dart';

class KirimUang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF1A237E),
              title: Text("Kirim Uang"),
              bottom: TabBar(tabs: <Widget>[
                Tab(
                  text: "Sesama Money Access  ",
                ),
                Tab(
                  text: "Rekening Bank",
                )
              ]),
            ),
            body: TabBarView(children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Nomor Handhpone'),
                    ),
                    Divider(
                      height: 10,
                    ),
                    Container(
                      child: Card(
                        child: ListTile(
                          title: Text(
                            'Money Cash',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Saldo Rp.21.600',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 10,
                    ),
                    Container(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Nominal Transfer',
                            prefixText: 'Rp.',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                                // ignore: deprecated_member_use
                                inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: 'Bayar Hutang'),
                        // ignore: deprecated_member_use
                        inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                      ),
                    ),
                    KirimUangWidget()
                    ],
                ),
              ),
              // ignore: deprecated_member_use
              Container(
                margin: EdgeInsets.symmetric(horizontal: 150, vertical: 280),
                // ignore: deprecated_member_use
                child: RaisedButton(
                    child: Text(
                      "TUTUP",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.indigo,
                    onPressed: () {
                      BorderRadius.circular(5);
                      Navigator.pop(context);
                    }),
              )
            ]),
          ),
        ),
    );
  }
}
