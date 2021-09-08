import 'package:flutter/material.dart';
import 'package:money_access/KirimUangPage/detil_transaksi.dart';

class KirimUangWidget extends StatefulWidget {
  const KirimUangWidget({Key key}) : super(key: key);

  @override
  _KirimUangWidgetState createState() => _KirimUangWidgetState();
}

class _KirimUangWidgetState extends State<KirimUangWidget> {
  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Konfirmasi Transfer",
                  style: TextStyle(fontSize: 23),
                ),
                Divider(
                  height: 10,
                  color: Colors.white,
                ),
                ListTile(
                  title: Text("Penerima"),
                  subtitle: Text("Addian"),
                ),
                Divider(
                  height: 5,
                  color: Colors.white,
                ),
                ListTile(
                  title: Text("Sumber Dana"),
                  subtitle: Text("Money Cash"),
                ),
                Divider(
                  height: 5,
                  color: Colors.white,
                ),
                Text("    Detail"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("    Biaya Transfer"),
                    Text("Rp 5.000"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("    Biaya Transaksi"),
                    Text("Rp 0"),
                  ],
                ),
                Divider(
                  height: 3,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("    Total"),
                    Text("Rp 5.000"),
                  ],
                ),
              ],
            ),
            actions: <Widget>[
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 250,
                          // ignore: deprecated_member_use
                          child: FlatButton(
                              color: Color(0xFF1A237E),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return DetilTransaksi();
                                }));
                              },
                              child: Text(
                                "TRANSFER",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 250,
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          color: Color(0xFF1A237E),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "BATALKAN",
                            style: TextStyle(color: Colors.white),
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
