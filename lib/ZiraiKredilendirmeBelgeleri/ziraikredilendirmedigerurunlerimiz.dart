import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';

import '../utility.dart';

class ZiraiKredilendirmeDigerUrunlerimiz extends StatelessWidget {
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
                _textZKDU(kTextZKDU),
                pdfbutton( kPdfAssetZKDigerUrunler1,  kButton1TextZKDU),
                pdfbutton( kPdfAssetZKDigerUrunler2,  kButton2TextZKDU),
                pdfbutton( kPdfAssetZKDigerUrunler3,  kButton3TextZKDU),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Container _textZKDU(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      color: Colors.grey[300],
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
