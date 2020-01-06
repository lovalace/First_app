import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/kvkk.dart';
import 'package:first_app/constants.dart';

class ZiraiKredilendirmeDigerUrunlerimiz extends StatelessWidget {
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
                _textZKDU(kTextZKDU),
                buttonZKDU(
                    kButton1TextZKDU,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKDigerUrunler1,
                        pdfAssetNamed: assetPDFZKDigerUrunler1,
                        pdfName: kPdfZKDigerUrunler1)),
                buttonZKDU(
                    kButton2TextZKDU,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKDigerUrunler2,
                        pdfAssetNamed: assetPDFZKDigerUrunler2,
                        pdfName: kPdfZKDigerUrunler2)),
                buttonZKDU(
                    kButton3TextZKDU,
                    () => _pdfAc(
                        context: context,
                        pdfAsset: kPdfAssetZKDigerUrunler3,
                        pdfAssetNamed: assetPDFZKDigerUrunler3,
                        pdfName: kPdfZKDigerUrunler3)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RaisedButton buttonZKDU(String buttonText, Function function) {
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

  Container _textZKDU(String text) {
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
