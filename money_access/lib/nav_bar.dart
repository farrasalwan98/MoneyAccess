import 'package:flutter/material.dart';
import 'package:money_access/AkunPage/akun_page.dart';
import 'package:money_access/HistoriPage/histori_page.dart';
import 'package:money_access/home_page.dart';
import 'package:money_access/info_page.dart';
import 'package:money_access/qr_code_page.dart';

class NavBotPage extends StatefulWidget {
  @override
  _NavBotPageState createState() => _NavBotPageState();
}

class _NavBotPageState extends State<NavBotPage> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    HistoriPage(),
    QrPage(),
    InfoPage(),
    AkunPage(),
  ];

  Widget currentScreen = HomePage();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.indigo,
          shape: CircularNotchedRectangle(),
          child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.white : Colors.grey,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HistoriPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.book,
                          color: currentTab == 1 ? Colors.white : Colors.grey,
                        ),
                        Text(
                          "History",
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = QrPage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.qr_code_2_rounded,
                          color: currentTab == 2 ? Colors.white : Colors.grey,
                        ),
                        Text(
                          "QR CODE",
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = InfoPage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.info_rounded,
                          color: currentTab == 3 ? Colors.white : Colors.grey,
                        ),
                        Text(
                          "Info",
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = AkunPage();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person_rounded,
                          color: currentTab == 4 ? Colors.white : Colors.grey,
                        ),
                        Text(
                          "Akun",
                          style: TextStyle(
                            color: currentTab == 4 ? Colors.white : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
