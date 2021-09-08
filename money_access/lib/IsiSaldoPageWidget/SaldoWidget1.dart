import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_access/IsiSaldoPageWidget/ButtonWidgetSaldo.dart';

class SaldoWidget1 extends StatelessWidget {
  const SaldoWidget1({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
                margin: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Top Up ke"),
                    Card(
                      child: ListTile(
                        title: Text(
                          "Money Cash",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Saldo Rp 21.600",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Nominal Transfer',
                            prefixText: 'Rp.',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        // ignore: deprecated_member_use
                        inputFormatters: [
                          // ignore: deprecated_member_use
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Bayar hutang",
                          prefixText: 'Rp.',
                        ),
                        inputFormatters: [
                          // ignore: deprecated_member_use
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    ButtonWidgetSaldo()
                    ],
                ),
              ),
              
    );
  }
}