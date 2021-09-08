import 'package:flutter/material.dart';
import 'package:money_access/IsiSaldoPageWidget/SaldoWidget1.dart';
import 'package:money_access/IsiSaldoPageWidget/SaldoWidget2.dart';

class IsiSaldo extends StatefulWidget {
  @override
  _IsiSaldoState createState() => _IsiSaldoState();
}

class _IsiSaldoState extends State<IsiSaldo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF1A237E),
              title: Text("Isi Saldo"),
              bottom: TabBar(tabs: <Widget>[
                Tab(
                  text: "Top UP VA",
                ),
                Tab(
                  text: "Tata Cara Pembayaran",
                )
              ]),
            ),
            body: TabBarView(children: <Widget>[
              SaldoWidget1(),
              SaldoWidget2()
              ]),
          ),
        ),
      ),
    );
  }
}
