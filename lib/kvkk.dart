
import 'package:first_app/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/gestures/tap.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:first_app/main.dart';

import 'constants.dart';

class Deneme01 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton1TextKvkk),
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton2TextKvkk),
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton3TextKvkk),
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton4TextKvkk),
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton5TextKvkk),
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton6TextKvkk),
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton7TextKvkk),
              pdfbutton('http://www.paksanmakina.com.tr/wp-content/uploads/2019/09/YERL%C4%B0-MALI-BELGES%C4%B0.pdf',  kButton8TextKvkk),
            ],
          ),
        ),
      ),
    );
  }
}

  class LinkTextSpan extends TextSpan {
  LinkTextSpan({TextStyle style, String url, String text})
      : super(
      style: TextStyle(color: Colors.black,),
      text: text ?? url,
      recognizer: new TapGestureRecognizer()
        ..onTap = () {
          launch(url);
        });
  }
