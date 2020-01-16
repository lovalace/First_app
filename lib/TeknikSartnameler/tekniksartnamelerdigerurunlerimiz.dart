import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';
import '../utility.dart';

class TeknikSartnamelerDigerUrunlerimiz extends StatelessWidget {
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
                _textTSDU(kTextTSDU),
                 pdfbutton( kPdfAssetTSDU1,  kButton1TextTSDU),
                  pdfbutton( kPdfAssetTSDU2,  kButton2TextTSDU),
                   pdfbutton( kPdfAssetTSDU3,  kButton3TextTSDU),
                    pdfbutton( kPdfAssetTSDU4,  kButton4TextTSDU),
                     pdfbutton( kPdfAssetTSDU5,  kButton5TextTSDU),
                     pdfbutton( kPdfAssetTSDU6,  kButton6TextTSDU),
              
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonDRDU(String buttonText, Function function) {
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

  Container _textTSDU(String text) {
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
