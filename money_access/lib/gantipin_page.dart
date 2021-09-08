import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class GantiPinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Ganti Kode PIN Keamanan")),
          backgroundColor: Color(0xFF1A237E),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Masukkan Kode PIN Keamanan saat ini",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              PinCodeTextField(
                obscureText: true,
                appContext: context,
                length: 6,
                onChanged: (value) {
                  print(value);
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 30,
                  fieldWidth: 30,
                ),
              ),
              Text(
                "Buat Kode PIN Keamanan Baru",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              PinCodeTextField(
                obscureText: true,
                appContext: context,
                length: 6,
                onChanged: (value) {
                  print(value);
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 30,
                  fieldWidth: 30,
                ),
              ),
              Text(
                "Konfirmasi Kode PIN Keamanan baru",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              PinCodeTextField(
                obscureText: true,
                appContext: context,
                length: 6,
                onChanged: (value) {
                  print(value);
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 30,
                  fieldWidth: 30,
                ),
              ),
              Divider(
                height: 30,
                color: Colors.white,
              ),
              Text("Lupa kode PIN Keamanan ?"),
              Divider(
                height: 30,
                color: Colors.white,
              ),
              // ignore: deprecated_member_use
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                color: Color(0xFF1A237E),
                // ignore: deprecated_member_use
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: deprecated_member_use
                    FlatButton(
                      color: Color(0xFF1A237E),
                      onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("SIMPAN",
                              style: TextStyle(
                                color: Colors.white
                              ),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
