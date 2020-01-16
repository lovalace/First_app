import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';

import '../utility.dart';

class TeknikSartnamelerSuperS8002 extends StatelessWidget {
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
                _textTSS8002(kTextTSS8002),
                 pdfbutton( kPdfAssetTSS8002_1,  kButton1TextTSS8002),
                 pdfbutton( kPdfAssetTSS8002_2,  kButton2TextTSS8002),
                 pdfbutton( kPdfAssetTSS8002_3,  kButton3TextTSS8002),
                 pdfbutton( kPdfAssetTSS8002_4,  kButton4TextTSS8002),
                 pdfbutton( kPdfAssetTSS8002_5,  kButton5TextTSS8002),
                 pdfbutton( kPdfAssetTSS8002_6,  kButton6TextTSS8002),
                 pdfbutton( kPdfAssetTSS8002_7,  kButton7TextTSS8002),
                 pdfbutton( kPdfAssetTSS8002_8,  kButton8TextTSS8002),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonTSS8002(String buttonText, Function function) {
    return RaisedButton(
      color: Colors.white,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          buttonText,
        ),
      ),
      onPressed: function,
    );
  }

  Container _textTSS8002(String text) {
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
