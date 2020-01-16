
import 'package:first_app/utility.dart';
import 'package:flutter/material.dart';
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
              pdfbutton(kPdfAssetKvkk1,  kButton1TextKvkk),
              pdfbutton(kPdfAssetKvkk2,  kButton2TextKvkk),
              pdfbutton(kPdfAssetKvkk3,  kButton3TextKvkk),
              pdfbutton(kPdfAssetKvkk4,  kButton4TextKvkk),
              pdfbutton(kPdfAssetKvkk5,  kButton5TextKvkk),
              pdfbutton(kPdfAssetKvkk6,  kButton6TextKvkk),
              pdfbutton(kPdfAssetKvkk7,  kButton7TextKvkk),
              pdfbutton(kPdfAssetKvkk8,  kButton8TextKvkk),
            ],
          ),
        ),
      ),
    );
  }
}
