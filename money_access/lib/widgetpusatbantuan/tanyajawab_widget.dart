import 'package:flutter/material.dart';
import 'package:money_access/widgetpusatbantuan/tanyajawab_widget2.dart';

class TanyaJawab extends StatelessWidget {
  const TanyaJawab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1A237E),
          title: Text("Tanya Jawab"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Center(
                          child: Text(
                    "Frequently Asked Question (FAQ)",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ))),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 0, 15, 25),
                      child: Center(
                          child: Text(
                    "Money Access",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ))),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 10, 15, 20),
                    child: Text("Untuk meningkatkan kualitas layanan dalam penggunaan dan dapat dijadikan sebagai pedoman dalam menggunakan aplikasi Money Access maka anda dapat temukan jawaban atas setiap pertanyaan yang ingin diajukan",
                    textAlign: TextAlign.justify,
                    maxLines: 5,
                    ),
                  ),
                  TanyaJawabWidget2()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
