import 'package:first_app/utility.dart';
import 'package:flutter/material.dart';
import 'package:first_app/main.dart';

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

  Column buttonYerliMali(context) {
    return Column(children: <Widget>[
       RaisedButton(
        color: Colors.white,
        child: Align(
          alignment: Alignment.centerLeft,
          child:  
           pdfbutton('https://paksan.bandirmawebtasarim.net/images/yerlimali.pdf',  'YERLİ MALI BELGESİ'),
        ), onPressed: () {},
      ),
    ],
        
    );
  }

  Container textKorumaliBayiGirisi() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      color: Colors.white,
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


