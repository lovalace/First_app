import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';

import '../utility.dart';

class TeknikSartnamelerYemKarmaMakinesi extends StatelessWidget {
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
                _textTSYemKarma(kTextTSYemKarma),
                pdfbutton( kPdfAssetTSYemKarma1,  kButton1TextTSYemKarma),
                pdfbutton( kPdfAssetTSYemKarma2,  kButton2TextTSYemKarma),
                pdfbutton( kPdfAssetTSYemKarma3,  kButton3TextTSYemKarma),
                pdfbutton( kPdfAssetTSYemKarma4,  kButton4TextTSYemKarma),

              
              ],
            ),
          ),
        ),
      ),
    );
  }


  Container _textTSYemKarma(String text) {
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
