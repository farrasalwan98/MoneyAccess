import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Ubah Profil")
          ),
          backgroundColor: Color(0xFF1A237E),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 35),
                    child: ListTile(
                      leading: Icon(
                        Icons.person_outline_rounded,
                        size: 65,
                        color: Colors.black12,
                      ),
                      title: Text(
                        "Perbarui foto profil",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Text(
                    "Nama Lengkap",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Nama Lengkap"),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Email",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "No.KTP",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "No.KTP"),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Tempat Kelahiran",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Tempat Kelahiran"),
                  ),
                ],
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                  child: Text(
                    "TUTUP",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.indigo,
                  onPressed: () {
                    BorderRadius.circular(5);
                    Navigator.pop(context);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
