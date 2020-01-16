import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';

import '../utility.dart';

class TeknikSartnamelerSuperYunusBalyaMakinesi extends StatelessWidget {
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
                _textTSYunus(kTextTSYunus),
                  pdfbutton( kPdfAssetTSYunus1,  kButton1TextTSYunus),
                  pdfbutton( kPdfAssetTSYunus2,  kButton2TextTSYunus),
                  pdfbutton( kPdfAssetTSYunus3,  kButton3TextTSYunus),
                  pdfbutton( kPdfAssetTSYunus4,  kButton4TextTSYunus),
                  pdfbutton( kPdfAssetTSYunus5,  kButton5TextTSYunus),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonTSYunus(String buttonText, Function function) {
    return RaisedButton(
      color: Colors.grey,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          buttonText,
        ),
      ),
      onPressed: function,
    );
  }

  Container _textTSYunus(String text) {
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
