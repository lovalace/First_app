
import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';
import 'package:first_app/pdfviewPage.dart';

import '../utility.dart';


class DeneyRaporlariDigerUrunlerimiz extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
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
              _textDRDU('DENEY RAPORLARI DİĞER ÜRÜNLERİMİZ'),
              Icon( Icons.audiotrack,color: Colors.green,size: 30.0,), 
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf', 'ÇEKİÇ 14.03.2023'),
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf', 'ORKİNOS 870 BÜYÜK BALYA MAKİNASI DENEY RAPORU'),
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf', 'ORKİNOS 6127 BÜYÜK BALYA MAKİNASI DENEY RAPORU 14.09.2020'),
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf', 'Yengeç 135 02.10.2024'),
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf', 'Yengeç 165 02.10.2024'),
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf', 'Yengeç 195 02.10.2024'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _textDRDU(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      color: Colors.white,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 32,
        ),
      ),
    );
  }
}
