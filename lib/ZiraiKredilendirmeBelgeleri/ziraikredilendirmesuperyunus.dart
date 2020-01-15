import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/pdfviewPage.dart';
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
                 pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton1TextZKSuperYunus),
                  pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton2TextZKSuperYunus),
                   pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton3TextZKSuperYunus),
                
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