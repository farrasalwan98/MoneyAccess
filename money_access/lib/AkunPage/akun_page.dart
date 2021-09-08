import 'package:flutter/material.dart';
import 'package:money_access/gantipin_page.dart';
import 'package:money_access/ProfilePage/profile_page.dart';
import 'package:money_access/PusatBantuanPage/pusat_bantuan_page.dart';

class AkunPage extends StatefulWidget {

  @override
  _AkunPageState createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Akun")),
          backgroundColor: Color(0xFF1A237E),
        ),
        body: Container(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                      child: ListTile(
                        leading: Icon(Icons.person_outline_outlined,
                        size: 70,
                        ),
                        title: Text("Nama Lengkap"),
                        subtitle: Text("Tambahkan Keterangan"),
                      ),
                    ),
                    itemprofile(context)],
                ),
              ],
            )),
      ),
    );
  }

  Widget itemprofile(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "AKUN",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(
                Icons.manage_accounts_rounded,
                size: 35,
                color: Colors.indigo,
              ),
              title: Text("Ubah Profil"),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 25,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProfilePage();
                }));
              },
            ),
            Divider(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.lock_clock_rounded,
                size: 35,
                color: Colors.indigo,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return GantiPinPage();
                }));
              },
              title: Text("Ganti Kode PIN Keamanan"),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 25,
                color: Colors.black,
              ),
            ),
            Divider(
              height: 20,
            ),
            Text(
              "TENTANG",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(
                Icons.menu_book_sharp,
                size: 35,
                color: Colors.indigo,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PusatBantuan();
                }));
              },
              title: Text("Pusat Bantuan"),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 25,
                color: Colors.black,
              ),
            ),
            Divider(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.description_rounded,
                size: 35,
                color: Colors.indigo,
              ),
              title: Text("Syarat & Ketentuan"),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 25,
                color: Colors.black,
              ),
            ),
            Divider(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.verified_user_rounded,
                size: 35,
                color: Colors.indigo,
              ),
              title: Text("Kebijakan Privasi"),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 25,
                color: Colors.black,
              ),
            ),
            Divider(
              height: 20,
            ),
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
                                  Navigator.pop(context);
                                },
                                child: Center(
                                  child: Text(
                                    "LOG OUT",
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
        ),
      ),
    );
  }
}
