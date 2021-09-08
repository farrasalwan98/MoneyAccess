import 'package:flutter/material.dart';

class BuatTagihan extends StatefulWidget {
  const BuatTagihan({Key key}) : super(key: key);

  @override
  _BuatTagihanState createState() => _BuatTagihanState();
}

class _BuatTagihanState extends State<BuatTagihan> {
  Bank selectedBank;
  List<Bank> bank = [Bank("BANK BNI"), Bank("BANK BRI"), Bank("BANK MANDIRI")];

  // ignore: missing_return
  List<DropdownMenuItem> generateItems(List<Bank> bank) {
    List<DropdownMenuItem> items = [];
    for (var item in bank) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Kirim Tagihan"),
          backgroundColor: Color(0xFF1A237E),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 22, horizontal: 10),
          child: ListView(
            children: [
              ListTile(
                subtitle: Text(
                  "Rp 50.000",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                title: Text(
                  "Tagihan Sebesar",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Text(
                "Biaya Admin BANK: GRATIS",
                textAlign: TextAlign.center,
              ),
              Divider(
                height: 25,
                color: Colors.white,
              ),
              Text("Pilih Bank"),
              Container(
                child: DropdownButton(
                  isExpanded: true,
                  value: selectedBank,
                  items: generateItems(bank),
                  onChanged: (item) {
                    setState(() {
                      selectedBank = item;
                    });
                  },
                ),
              ),
              Container(
                child: Card(
                  color: Color(0xFF1A237E),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "Kepada",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "08127368123",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Catatan",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "Bayarlah Hutangmu",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Status",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "Menunggu Transfer",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Tanggal",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "Senin 10 September 2021",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                color: Color(0xFF1A237E),
                child:
                    // ignore: deprecated_member_use
                    FlatButton(onPressed: () {
                      Navigator.pop(context);
                    }, 
                    child: Text("KIRIM TAGIHAN",
                    style: TextStyle(
                      color: Colors.white
                    ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Bank {
  String name;
  Bank(this.name);
}
