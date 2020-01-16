import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';
import '../utility.dart';

class SuperYunusBalyaMakinesi extends StatelessWidget {
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
                _textYunusBalya(ktextYunusBalya),   
                 pdfbutton( kPdfAssetYunusBalya1,  kButton1TextYunusBalya),
                 pdfbutton( kPdfAssetYunusBalya2, kButton2TextYunusBalya), 
                 pdfbutton( kPdfAssetYunusBalya3, kButton3TextYunusBalya), 
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _textYunusBalya(String text) {
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
