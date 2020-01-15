import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'constants.dart';
import 'package:first_app/pdfviewPage.dart';

import 'kvkk.dart';

class BayiGirisiPdf extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NewDrawer(),
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                textKorumaliBayiGirisi(),
                buttonDeneyRaporlari(context),
                buttonTeknikSartnameler(context),
                buttonZiraiKredileme(context),
                buttonYerliMali(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
  

  RaisedButton buttonDeneyRaporlari(context) {
    return RaisedButton(
      color: Colors.white,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "DENEY RAPORLARI",
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, "/deneyraporlari");
      },
    );
  }

  RaisedButton buttonTeknikSartnameler(context) {
    return RaisedButton(
      color: Colors.white,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "TEKNİK ŞARTNAMELER",
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, "/tekniksartnameler");
      },
    );
  }

  RaisedButton buttonZiraiKredileme(context) {
    return RaisedButton(
      color: Colors.white,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "ZİRAİ KREDİLENDİRME BELGELERİ",
        ),
      ),
      onPressed: () {Navigator.pushNamed(context, "/ziraikredilendirmebelgeleri");},
    );
  }

  RaisedButton buttonYerliMali(context) {
    return RaisedButton(
      color: Colors.white,
      child: Align(
        alignment: Alignment.centerLeft,
        child:   new RichText(
              text: new LinkTextSpan(
                  style: TextStyle(color: Colors.red),
                  url: 'http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',
                  text:  'YERLİ MALI BELGESİ'),
              ),
      ), onPressed: () {},
    );
  }

  Container textKorumaliBayiGirisi() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      color: Colors.grey[300],
      child: Text(
        'Korumalı: BAYİ GİRİŞİ',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 32,
        ),
      ),
    );
  }
}


