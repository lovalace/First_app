import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';

import '../utility.dart';

class YemKarmaMakinesi extends StatelessWidget {
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
                _textYemKarma(ktextYemKarma),
                  pdfbutton( kPdfAssetYemKarma1,  kButton1TextYemKarma),
                    pdfbutton( kPdfAssetYemKarma2,  kButton2TextYemKarma),
                      pdfbutton( kPdfAssetYemKarma3,  kButton3TextYemKarma),
                        pdfbutton( kPdfAssetYemKarma4,  kButton4TextYemKarma),
                         pdfbutton( kPdfAssetYemKarma5,  kButton5TextYemKarma),
                          pdfbutton( kPdfAssetYemKarma6,  kButton6TextYemKarma),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _textYemKarma(String text) {
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
