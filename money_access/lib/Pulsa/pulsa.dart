import 'package:flutter/material.dart';
import 'package:money_access/pulsa_widget.dart';

class Pulsa extends StatefulWidget {
  @override
  _PulsaState createState() => _PulsaState();
}

class _PulsaState extends State<Pulsa> {
  Produk selectedProduk;

  List<Produk> produk = [
    Produk("Rp.5.000"),
    Produk("Rp.1.000"),
  ];

  // ignore: missing_return
  List<DropdownMenuItem> generateItems(List<Produk> produk) {
    List<DropdownMenuItem> items = [];
    for (var item in produk) {
      items.add(DropdownMenuItem(
        child: Text(item.produk),
        value: item,
      ));
      return items;
    }
  }

  Pembayaran selectedPembayaran;

  List<Pembayaran> pembayaran = [
    Pembayaran("Cash"),
  ];

  // ignore: missing_return
  List<DropdownMenuItem> generateItems2(List<Pembayaran> pembayaran) {
    List<DropdownMenuItem> items = [];
    for (var item in pembayaran) {
      items.add(DropdownMenuItem(
        child: Text(item.pembayaran),
        value: item,
      ));
      return items;
    }
  }

  int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A237E),
        title: Text("Pulsa"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Card(
                        child: ListTile(
                          leading: Image.asset('assets/telkomsel.jpg'),
                          title: Text(
                            "TELKOMSEL",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Saldo Rp 21.600",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  child: Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: selectedRadio,
                          onChanged: (val) {
                            print("Radio $val");
                            setSelectedRadio(val);
                          }),
                      Text("Prabayar"),
                      Radio(
                          value: 2,
                          groupValue: selectedRadio,
                          onChanged: (val) {
                            print("Radio $val");
                            setSelectedRadio(val);
                          }),
                      Text("Pasca Bayar"),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Pilih Produk"),
                      DropdownButton(
                        isExpanded: true,
                        value: selectedProduk,
                        items: generateItems(produk),
                        onChanged: (item) {
                          setState(() {
                            selectedProduk = item;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Metode Pembayaran"),
                      DropdownButton(
                        isExpanded: true,
                        value: selectedPembayaran,
                        items: generateItems2(pembayaran),
                        onChanged: (item){
                          setState(() {
                            selectedPembayaran = item;
                          });
                        },)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Masukkan Kode Promo"),
                      TextField(

                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Text("Lihat Promo", style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),)),
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return PulsaWidget();
                                  }));
                                },
                                child: Center(
                                  child: Text(
                                    "BERIKUTNYA",
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

class Produk {
  String produk;
  Produk(this.produk);
}

class Pembayaran {
  String pembayaran;
  Pembayaran(this.pembayaran);
}
