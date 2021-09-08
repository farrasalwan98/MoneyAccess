import 'package:flutter/material.dart';
import 'package:money_access/HistoriPage/histori_page.dart';
import 'package:money_access/IsiSaldo/isi_saldo.dart';
import 'package:money_access/KirimUangPage/kirim_uang.dart';
import 'package:money_access/TagihanPage/kirim_tagihan.dart';

class StackWidgetHome extends StatelessWidget {
  const StackWidgetHome({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              splashColor: Colors.amber,
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return IsiSaldo();
                                }));
                              },
                              child: Icon(
                                Icons.account_balance_wallet_rounded,
                                size: 40,
                                color: Colors.indigo,
                              ),
                            ),
                            Text("Isi Saldo"),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              splashColor: Colors.amber,
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return KirimUang();
                                }));
                              },
                              child: Icon(
                                Icons.account_balance_wallet_rounded,
                                size: 40,
                                color: Colors.indigo,
                              ),
                            ),
                            Text("Kirim Uang"),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return KirimTagihan();
                                }));
                              },
                              child: Icon(
                                Icons.account_balance_wallet_rounded,
                                size: 40,
                                color: Colors.indigo,
                              ),
                            ),
                            Text("Kirim Tagihan"),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return HistoriPage();
                                }));
                              },
                              child: Icon(
                                Icons.account_balance_wallet_outlined,
                                size: 40,
                                color: Colors.indigo,
                              ),
                            ),
                            Text("Riwayat"),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1.0, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 155),
                    width: 400,
                    height: 90,
                  ),
    );
  }
}