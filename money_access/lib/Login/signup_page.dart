import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_access/SignUpWidget/SignUpWidget.dart';
import 'package:money_access/SignUpWidget/SignUpWidget2.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  Jk selectedJk;
  List<Jk> jk = [Jk("Laki-laki"), Jk("Perempuan")];

  // ignore: missing_return
  List<DropdownMenuItem> generateItems(List<Jk> jk) {
    List<DropdownMenuItem> items = [];
    for (var item in jk) {
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
          backgroundColor: Color(0xFF1A237E),
          title: Text("Daftar"),
        ),
        body: Container(
          margin: EdgeInsets.all(15),
          child: ListView(
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("No. KTP"),
                    TextField(
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Nomor KTP'),
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black,
                    ),
                    Text("Nama Lengkap"),
                    TextField(
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Nama Lengkap'),
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black,
                    ),
                    Text("Tempat Tanggal Lahir"),
                    TextField(
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          hintText: 'Tempat Tanggal Lahir'),
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black,
                    ),
                    Text("Email"),
                    TextField(
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          hintText: 'Email'),
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black,
                    ),
                    Text("Password"),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          hintText: 'Password'),
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black,
                    ),
                    Text("Alamat"),
                    TextField(
                      decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          hintText: 'Alamat'),
                    ),
                    Divider(
                      height: 20,
                      color: Colors.black,
                    ),
                    Text("Jenis Kelamin"),
                    Container(
                      child: DropdownButton(
                        isExpanded: true,
                        value: selectedJk,
                        items: generateItems(jk),
                        onChanged: (item) {
                          setState(() {
                            selectedJk = item;
                          });
                        },
                      ),
                    ),
                  ]),
              SignUpWidget(),
              Divider(
                height: 15,
                color: Colors.white,
              ),
              SignUpWidget2(),
            ],
          ),
        ),
      ),
    );
  }
}

class Jk {
  String name;
  Jk(this.name);
}
