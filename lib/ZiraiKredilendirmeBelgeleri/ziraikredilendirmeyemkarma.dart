import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';

import '../utility.dart';

class ZiraiKredilendirmeYemKarma extends StatelessWidget {
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
                _textZKYemKarma(kTextZKYemKarma),
                pdfbutton( kPdfAssetZKYemKarma1,  kButton1TextZKYemKarma),
                pdfbutton( kPdfAssetZKYemKarma2,  kButton2TextZKYemKarma),
                pdfbutton( kPdfAssetZKYemKarma3,  kButton3TextZKYemKarma),
                pdfbutton( kPdfAssetZKYemKarma4,  kButton4TextZKYemKarma),
                pdfbutton( kPdfAssetZKYemKarma5,  kButton5TextZKYemKarma),
                pdfbutton( kPdfAssetZKYemKarma6,  kButton6TextZKYemKarma),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

  Container _textZKYemKarma(String text) {
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
