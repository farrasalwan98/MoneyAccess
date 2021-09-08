import 'package:flutter/material.dart';
import 'package:money_access/Login/login_page.dart';

class SignUpWidget2 extends StatelessWidget {
  const SignUpWidget2({ Key key }) : super(key: key);

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
                            onTap: () {
                              Navigator.pop(context,
                                  MaterialPageRoute(builder: (context) {
                                return LoginPage();
                              }));
                            },
                            child: Center(
                              child: Text(
                                "KEMBALI",
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
                                Color(0xFFC2185B),
                                Color(0xFFC2185B),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                      ),
                    )
                  ],
                ),
              ),
    );
  }
}