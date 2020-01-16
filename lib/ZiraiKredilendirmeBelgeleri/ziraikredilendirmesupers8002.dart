import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';

import '../utility.dart';

class ZiraiKredilendirmeSuperS8002 extends StatelessWidget {
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
                _textZKSuperS8002(kTextZKSuperS8002),
                pdfbutton(  kPdfAssetZKSuperS8002_1,  kButton1TextZKSuperS8002),
                pdfbutton(  kPdfAssetZKSuperS8002_2,  kButton2TextZKSuperS8002),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _textZKSuperS8002(String text) {
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
