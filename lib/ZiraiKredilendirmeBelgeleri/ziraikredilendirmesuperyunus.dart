import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/pdfviewPage.dart';
import 'package:first_app/constants.dart';

class ZiraiKredilendirmeSuperYunus extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NewDrawer(),
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
                buttonZKSuperYunus(
                    kButton1TextZKSuperYunus,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKSuperYunus1,
                        pdfAssetNamed: assetPDFZKSuperYunus1,
                        pdfName: kPdfZKSuperYunus1)),
                buttonZKSuperYunus(
                    kButton2TextZKSuperYunus,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKSuperYunus2,
                        pdfAssetNamed: assetPDFZKSuperYunus2,
                        pdfName: kPdfZKSuperYunus2)),
                buttonZKSuperYunus(
                    kButton3TextZKSuperYunus,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKSuperYunus3,
                        pdfAssetNamed: assetPDFZKSuperYunus3,
                        pdfName: kPdfZKSuperYunus3)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonZKSuperYunus(String buttonText, Function function) {
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

  _pdfAc(
      {BuildContext context,
      String pdfName,
      String pdfAsset,
      String pdfAssetNamed}) async {
    await GetFilesFromAssets(pdfname: pdfName)
        .getFileFromAsset(pdfAsset)
        .then((f) {
      pdfAssetNamed = f.path;
    });
    if (pdfAssetNamed != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PdfViewPage(path: pdfAssetNamed)));
    }
  }
}
