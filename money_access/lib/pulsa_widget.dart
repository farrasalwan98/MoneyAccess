import 'package:flutter/material.dart';

class PulsaWidget extends StatefulWidget {

  @override
  _PulsaWidgetState createState() => _PulsaWidgetState();
}

class _PulsaWidgetState extends State<PulsaWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Pulsa"),
          backgroundColor: Color(0xFF1A237E),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 17),
                child: Text("Konfirmasi Pembayaran",
                style: TextStyle(
                  color: Color(0xFF1A237E),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: ListTile(
                  leading: Image.asset("assets/telkomsel.jpg"),
                  title: Text("TELKOMSEL"),
                  subtitle: Text("0812635121"),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: ListTile(
                  title: Text("Metode Pembayaran"),
                  subtitle: Text("CASH",
                  style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(2),
                color: Colors.grey.shade300,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Produk"),
                      subtitle: Text("5000"),
                    ),
                    ListTile(
                      title: Text("Denom"),
                      subtitle: Text("Rp.5000"),
                    ),
                    ListTile(
                      title: Text("Harga"),
                      subtitle: Text("Rp.5000"),
                    ),
                    ListTile(
                      title: Text("No. Hp"),
                      subtitle: Text("0812635121"),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
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
                                  Navigator.pop(context);
                                },
                                child: Center(
                                  child: Text(
                                    "BAYAR",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF1A237E),
                                    Color(0xFF01579B),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                )),
                          ),
                        )
                      ],
                    ),
                  
              )
            ],
          ),
        ),
      ),
    );
  }
}