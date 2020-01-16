import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';

import '../utility.dart';

class ZiraiKredilendirmeSuperYunus extends StatelessWidget {
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
                _textZKSuperYunus(kTextZKSuperYunus),
                 pdfbutton( kPdfAssetZKSuperYunus1,  kButton1TextZKSuperYunus),
                  pdfbutton( kPdfAssetZKSuperYunus2,  kButton2TextZKSuperYunus),
                   pdfbutton( kPdfAssetZKSuperYunus3,  kButton3TextZKSuperYunus),
                
              ],
            ),
          ),
        ),
      ),
    );
  }



  Container _textZKSuperYunus(String text) {
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