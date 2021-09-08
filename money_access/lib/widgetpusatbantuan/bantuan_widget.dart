import 'package:flutter/material.dart';
import 'package:money_access/widgetpusatbantuan/tanyajawab_widget.dart';

class BantuanWidget extends StatelessWidget {
  const BantuanWidget({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return TanyaJawab();
                }));
              },
              child: ListTile(
                leading: Icon(Icons.question_answer_rounded,
                size: 35,),
                title: Text("Tanya Jawab"),
              ),
            ),
            Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.email_outlined,
              size: 35,),
              title: Text("Email support.ambon@accessdigital.id"),
            ),
            Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.support_agent_rounded,
              size: 35,),
              title: Text("Call Center +628111544994"),
            ),
            Divider(
              height: 5,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.call,
              size: 35,),
              title: Text("WhatsApp +628111544994"),
            ),
            Divider(
              height: 5,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}