import 'package:flutter/material.dart';

class ButtonWidgetSaldo extends StatefulWidget {
  const ButtonWidgetSaldo({Key key}) : super(key: key);

  @override
  _ButtonWidgetSaldoState createState() => _ButtonWidgetSaldoState();
}

class _ButtonWidgetSaldoState extends State<ButtonWidgetSaldo> {
  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Konfirmasi Top Up",
                    style: TextStyle(fontSize: 23),
                  ),
                  Divider(
                    height: 10,
                    color: Colors.white,
                  ),
                  Text("Silahkan transfer ke Virtual Account"),
                  Divider(
                    height: 10,
                    color: Colors.white,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40))),
                  ),
                  Divider(
                    height: 15,
                    color: Colors.white,
                  ),
                  Text(
                    "Detil",
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(
                    height: 15,
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nominal Top Up"),
                      Text("Rp 10.000"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Biaya Transaksi"),
                      Text("Rp 0"),
                    ],
                  ),
                  Divider(
                    height: 15,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total"),
                      Text("Rp 10.000"),
                    ],
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: deprecated_member_use
                    SizedBox(
                      width: 250,
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
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
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
                    onTap: () async {
                      await showInformationDialog(context);
                    },
                    child: Center(
                      child: Text(
                        "LANJUTKAN",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
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
    );
  }
}
