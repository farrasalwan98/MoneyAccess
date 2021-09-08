import 'package:flutter/material.dart';
import 'package:money_access/HistoriPageWidget/widget_histori.dart';
import 'package:money_access/HistoriPageWidget/widget_histori2.dart';

class HistoriPage extends StatefulWidget {
  @override
  _HistoriPageState createState() => _HistoriPageState();
}

class _HistoriPageState extends State<HistoriPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFF1A237E),
              title: Text("Riwayat"),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: 'Riwayat Transaksi',
                  ),
                  Tab(
                    text: 'Riwayat Top Up',
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                HistoriWidget(),
                HistoriPageWidget()
                ],
            ),
          ),
        ),
      )
    );
  }
}
